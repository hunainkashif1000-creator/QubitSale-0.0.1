<?php
session_start();
include 'db.php';
$conn->set_charset("utf8mb4");
$search='';
if(isset($_GET['search'])) $search=$conn->real_escape_string($_GET['search']);
?>
<!DOCTYPE html>
<html>
<head>
<title>Inventory - Stockora</title>
<meta charset="UTF-8">
<?php include 'sidebar.php'; ?>
<style>
.badge{padding:4px 10px;border-radius:20px;font-size:11px;font-weight:700;}
.badge-out{background:rgba(239,68,68,0.15);color:#ef4444;}
.badge-low{background:rgba(245,158,11,0.15);color:#f59e0b;}
.badge-ok{background:rgba(16,185,129,0.15);color:#10b981;}
.search-row{display:flex;gap:12px;align-items:center;margin-bottom:20px;flex-wrap:wrap;}
.search-row input{max-width:280px;}
</style>
</head>
<body>
<div class="main-content">
  <div class="page-header">
    <div class="page-title">Inventory</div>
    <div class="page-subtitle">Stock levels and product status</div>
  </div>
  <div class="content-area">
    <div class="search-row">
      <form method="get" style="display:flex;gap:10px;flex:1;">
        <input type="text" name="search" placeholder="Search product or barcode..." value="<?php echo htmlspecialchars($search); ?>">
        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i> Search</button>
        <?php if($search): ?><a href="inventory.php" class="btn btn-dark">Clear</a><?php endif; ?>
      </form>
      <a href="print_barcodes.php" target="_blank" class="btn btn-dark"><i class="fas fa-print"></i> Print All Barcodes</a>
    </div>
    <div class="card">
    <table>
      <thead><tr><th>#</th><th>Product</th><th>Barcode</th><th>Price</th><th>Stock</th><th>Status</th></tr></thead>
      <tbody>
      <?php
      $i=1;
      $sql="SELECT * FROM products";
      if($search!='') $sql.=" WHERE name LIKE '%$search%' OR barcode LIKE '%$search%'";
      $q=$conn->query($sql);
      while($p=$q->fetch_assoc()):
      ?>
      <tr>
        <td style="color:var(--text-muted);"><?php echo $i++; ?></td>
        <td style="font-weight:600;"><?php echo htmlspecialchars($p['name']); ?></td>
        <td style="font-family:monospace;font-size:12px;color:var(--text-muted);"><?php echo $p['barcode']; ?></td>
        <td style="color:var(--accent2);font-weight:700;">Rs <?php echo number_format($p['price'],2); ?></td>
        <td style="font-weight:700;"><?php echo $p['stock']; ?></td>
        <td><?php
          if($p['stock']==0) echo "<span class='badge badge-out'>Out of Stock</span>";
          elseif($p['stock']<=5) echo "<span class='badge badge-low'>Low Stock</span>";
          else echo "<span class='badge badge-ok'>In Stock</span>";
        ?></td>
      </tr>
      <?php endwhile; ?>
      </tbody>
    </table>
    </div>
  </div>
</div>
</body>
</html>
