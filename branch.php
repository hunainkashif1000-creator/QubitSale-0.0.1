<?php
require_once 'auth.php';
require_once 'roles.php';
allow_roles(['admin']);
ob_start();
include 'db.php';
    
    
// Simple PHP logic to handle email subscriptions
$message = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Here you would typically save to a database or send an email
        $message = "Success! We'll notify you at " . htmlspecialchars($email);
    } else {
        $message = "Please enter a valid email address.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coming Soon | Something Awesome</title>
    <style>
        :root {
            --primary: #6c5ce7;
            --secondary: #a29bfe;
            --dark: #2d3436;
            --glass: rgba(255, 255, 255, 0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            overflow: hidden;
        }

        /* Animated Background */
        @keyframes gradient {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            background: var(--glass);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 3rem;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
            max-width: 600px;
            width: 90%;
            animation: fadeIn 1.5s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        p {
            margin-bottom: 2rem;
            font-weight: 300;
            opacity: 0.9;
        }

        /* Countdown Style */
        .countdown {
            display: flex;
            justify-content: space-around;
            margin-bottom: 2rem;
        }

        .time-box {
            background: rgba(0,0,0,0.2);
            padding: 1rem;
            border-radius: 10px;
            min-width: 80px;
        }

        .time-box span {
            display: block;
            font-size: 1.5rem;
            font-weight: bold;
        }
.home-button {
  display: flex;
  gap: 15px;
  justify-content: center;
  align-items: center; /* Ensures vertical centering */
  padding: 10px 20px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 50px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

/* Optional: Add hover effect to container */
.home-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
}
        /* Form Style */
        .subscribe-form {
            display: flex;
            gap: 10px;
            justify-content: center;
        }

        input[type="email"] {
            padding: 12px 20px;
            border-radius: 25px;
            border: none;
            outline: none;
            width: 60%;
            background: rgba(255,255,255,0.9);
        }

        button {
            padding: 12px 25px;
            border-radius: 25px;
            border: none;
            background: var(--primary);
            color: white;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
        }

        button:hover {
            background: var(--secondary);
            transform: scale(1.05);
        }

        .msg {
            margin-top: 15px;
            font-size: 0.9rem;
            color: #55efc4;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Stay Tuned</h1>
        <p>Our new website is under construction. We're working hard to give you the best experience!</p>

        <div class="countdown" id="timer">
            <div class="time-box">
                <span id="days">00</span> Days
            </div>
            <div class="time-box">
                <span id="hours">00</span> Hrs
            </div>
            <div class="time-box">
                <span id="minutes">00</span> Min
            </div>
            <div class="time-box">
                <span id="seconds">00</span> Sec
            </div>
        </div>
        <form method="POST" class="subscribe-form">
          <a href="index.php" class="home-button">Back to Home!</a>
            <input type="email" name="email" placeholder="Enter your email" required>
            <button type="submit">Notify Me</button>
        </form>
        
        <?php if($message): ?>
            <div class="msg"><?php echo $message; ?></div>
        <?php endif; ?>
    </div>

    <script>
        // Set the date we're counting down to (e.g., 30 days from now)
        const countDownDate = new Date();
        countDownDate.setDate(countDownDate.getDate() + 30); 

        const x = setInterval(function() {
            const now = new Date().getTime();
            const distance = countDownDate - now;

            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            document.getElementById("days").innerHTML = days;
            document.getElementById("hours").innerHTML = hours;
            document.getElementById("minutes").innerHTML = minutes;
            document.getElementById("seconds").innerHTML = seconds;

            if (distance < 0) {
                clearInterval(x);
                document.getElementById("timer").innerHTML = "WE ARE LIVE!";
            }
        }, 1000);
    </script>
</body>
</html>