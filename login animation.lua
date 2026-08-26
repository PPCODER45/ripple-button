<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login Form Animation</title>

    <style>

        /* ================================
           BASIC RESET
        ================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            width: 100%;
            height: 100%;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #121417;
            overflow: hidden;
            transition: background 0.8s ease;
        }


        /* ================================
           MAIN SCREEN
        ================================= */

        .scene {
            width: 100%;
            height: 100vh;

            position: relative;

            display: flex;
            justify-content: center;
            align-items: center;

            overflow: hidden;

            background:
                radial-gradient(
                    circle at 50% 45%,
                    rgba(255, 218, 120, 0.08),
                    transparent 35%
                ),
                #121417;

            transition: all 0.8s ease;
        }


        /* ================================
           ROOM WHEN LIGHT IS ON
        ================================= */

        .scene.light-on {
            background:
                radial-gradient(
                    circle at 34% 50%,
                    rgba(255, 226, 145, 0.35),
                    transparent 28%
                ),
                radial-gradient(
                    circle at 55% 50%,
                    rgba(255, 214, 110, 0.12),
                    transparent 45%
                ),
                #302e27;
        }


        /* ================================
           TITLE
        ================================= */

        .title {
            position: absolute;

            top: 35px;
            left: 0;

            width: 100%;

            text-align: center;

            color: #ffffff;

            font-size: 48px;
            font-weight: 400;

            letter-spacing: 1px;

            z-index: 20;
        }


        /* ================================
           CONTENT
        ================================= */

        .content {
            width: 850px;
            max-width: 90%;

            display: flex;

            justify-content: center;
            align-items: center;

            gap: 90px;

            margin-top: 50px;

            position: relative;

            z-index: 5;
        }


        /* ================================
           LAMP
        ================================= */

        .lamp-area {
            width: 300px;
            height: 400px;

            position: relative;

            display: flex;
            justify-content: center;
            align-items: center;
        }


        /* ================================
           LAMP SHADE
        ================================= */

        .lamp-shade {
            position: absolute;

            top: 45px;

            width: 150px;
            height: 70px;

            background: #eeeeee;

            border-radius:
                75px 75px 25px 25px;

            z-index: 5;

            transition: all 0.5s ease;
        }


        /* Lamp shade bottom */
        .lamp-shade::after {
            content: "";

            position: absolute;

            left: 0;
            bottom: -8px;

            width: 150px;
            height: 18px;

            background: #ded7bc;

            border-radius: 50%;
        }


        /* ================================
           LAMP GLOW
        ================================= */

        .lamp-glow {
            position: absolute;

            top: 70px;

            width: 260px;
            height: 260px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(255, 218, 120, 0.45),
                    rgba(255, 205, 100, 0.15),
                    transparent 70%
                );

            opacity: 0;

            transform: scale(0.7);

            transition:
                opacity 0.6s ease,
                transform 0.8s ease;

            pointer-events: none;
        }


        /* Glow ON */
        .light-on .lamp-glow {
            opacity: 1;

            transform: scale(1.1);
        }


        /* ================================
           LAMP STAND
        ================================= */

        .lamp-stand {
            position: absolute;

            top: 110px;

            width: 13px;
            height: 180px;

            background: #eeeeee;

            border-radius: 10px;

            z-index: 3;
        }


        /* ================================
           LAMP BASE
        ================================= */

        .lamp-base {
            position: absolute;

            bottom: 55px;

            width: 75px;
            height: 12px;

            background: #eeeeee;

            border-radius: 20px;

            z-index: 4;
        }


        /* ================================
           PULL CHAIN
        ================================= */

        .chain {
            position: absolute;

            top: 100px;
            left: calc(50% + 45px);

            width: 2px;
            height: 90px;

            background: #777;

            z-index: 2;

            cursor: pointer;

            transition: height 0.3s ease;
        }


        .chain-ball {
            position: absolute;

            bottom: -12px;
            left: -5px;

            width: 12px;
            height: 12px;

            border-radius: 50%;

            background: #e5b777;

            box-shadow:
                0 0 5px rgba(255, 205, 120, 0.5);

            cursor: pointer;
        }


        .chain:hover {
            height: 95px;
        }


        /* ================================
           LIGHT BULB
        ================================= */

        .bulb {
            position: absolute;

            top: 100px;

            width: 30px;
            height: 35px;

            border-radius:
                50% 50% 45% 45%;

            background: #5f5c51;

            z-index: 4;

            transition:
                background 0.5s ease,
                box-shadow 0.5s ease;
        }


        .light-on .bulb {
            background: #fff2b0;

            box-shadow:
                0 0 15px #ffe59a,
                0 0 35px #ffd76a,
                0 0 70px #ffca45;
        }


        /* ================================
           LOGIN FORM
        ================================= */

        .login-box {
            width: 280px;

            min-height: 270px;

            padding: 28px;

            border-radius: 20px;

            background:
                rgba(255, 255, 255, 0.055);

            border:
                1px solid rgba(255, 255, 255, 0.12);

            backdrop-filter: blur(15px);

            -webkit-backdrop-filter: blur(15px);

            box-shadow:
                0 20px 50px rgba(0, 0, 0, 0.35);

            transition:
                all 0.6s ease;

            opacity: 0.65;

            transform: translateY(10px);
        }


        /* Login box when lamp is ON */

        .light-on .login-box {
            opacity: 1;

            transform: translateY(0);

            background:
                rgba(255, 255, 255, 0.09);

            box-shadow:
                0 20px 60px rgba(0, 0, 0, 0.45),
                0 0 40px rgba(255, 211, 105, 0.08);
        }


        /* ================================
           WELCOME
        ================================= */

        .login-box h2 {
            color: white;

            font-size: 18px;

            font-weight: 500;

            margin-bottom: 25px;
        }


        /* ================================
           LABEL
        ================================= */

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            display: block;

            color: rgba(255, 255, 255, 0.45);

            font-size: 10px;

            margin-bottom: 6px;
        }


        /* ================================
           INPUT
        ================================= */

        .input-group input {
            width: 100%;

            height: 38px;

            border: none;
            outline: none;

            border-radius: 9px;

            padding: 0 12px;

            color: white;

            background:
                rgba(255, 255, 255, 0.08);

            border:
                1px solid transparent;

            transition: all 0.3s ease;
        }


        .input-group input::placeholder {
            color:
                rgba(255, 255, 255, 0.35);
        }


        .input-group input:focus {
            border-color:
                rgba(255, 215, 120, 0.6);

            background:
                rgba(255, 255, 255, 0.12);

            box-shadow:
                0 0 10px rgba(255, 213, 110, 0.12);
        }


        /* ================================
           SIGN IN BUTTON
        ================================= */

        .signin {
            width: 100%;

            height: 38px;

            margin-top: 10px;

            border: none;

            border-radius: 10px;

            cursor: pointer;

            color: #241e10;

            font-size: 12px;

            font-weight: bold;

            background:
                linear-gradient(
                    110deg,
                    #e7cf78,
                    #fff1a8,
                    #d6b84e
                );

            box-shadow:
                0 5px 20px
                rgba(239, 204, 98, 0.2);

            transition:
                transform 0.25s ease,
                box-shadow 0.25s ease;
        }


        .signin:hover {
            transform: translateY(-2px);

            box-shadow:
                0 8px 25px
                rgba(239, 204, 98, 0.4);
        }


        .signin:active {
            transform: scale(0.97);
        }


        /* ================================
           MESSAGE
        ================================= */

        .message {
            color: #ffe89b;

            font-size: 11px;

            text-align: center;

            margin-top: 12px;

            min-height: 15px;
        }


        /* ================================
           FLOOR LIGHT
        ================================= */

        .floor-light {
            position: absolute;

            width: 500px;
            height: 120px;

            bottom: -80px;

            left: 50%;

            transform:
                translateX(-50%);

            border-radius: 50%;

            background:
                rgba(255, 214, 110, 0.15);

            filter: blur(30px);

            opacity: 0;

            transition:
                opacity 0.8s ease;
        }


        .light-on .floor-light {
            opacity: 1;
        }


        /* ================================
           MOBILE
        ================================= */

        @media (max-width: 700px) {

            body {
                overflow-y: auto;
            }

            .scene {
                min-height: 100vh;
                height: auto;

                padding: 120px 20px 50px;
            }

            .title {
                top: 30px;

                font-size: 32px;
            }

            .content {
                flex-direction: column;

                gap: 10px;

                margin-top: 30px;
            }

            .lamp-area {
                transform:
                    scale(0.72);

                margin-bottom: -60px;
            }

            .login-box {
                width: 290px;
            }
        }

    </style>
</head>


<body>


    <div class="scene" id="scene">


        <!-- =================================
             TITLE
        ================================== -->

        <div class="title">
            Login Form Animation
        </div>



        <!-- =================================
             MAIN CONTENT
        ================================== -->

        <div class="content">


            <!-- =================================
                 LAMP
            ================================== -->

            <div class="lamp-area">


                <!-- Glow -->

                <div class="lamp-glow"></div>


                <!-- Lamp Shade -->

                <div class="lamp-shade"></div>


                <!-- Bulb -->

                <div class="bulb"></div>


                <!-- Stand -->

                <div class="lamp-stand"></div>


                <!-- Base -->

                <div class="lamp-base"></div>


                <!-- Pull Chain -->

                <div class="chain" id="chain">

                    <div class="chain-ball"></div>

                </div>


            </div>



            <!-- =================================
                 LOGIN FORM
            ================================== -->

            <div class="login-box">


                <h2>
                    Welcome
                </h2>


                <!-- Username -->

                <div class="input-group">

                    <label>
                        Username
                    </label>

                    <input
                        type="text"
                        id="username"
                        placeholder="Enter name"
                    >

                </div>


                <!-- Password -->

                <div class="input-group">

                    <label>
                        Password
                    </label>

                    <input
                        type="password"
                        id="password"
                        placeholder="Enter Password"
                    >

                </div>


                <!-- Button -->

                <button
                    class="signin"
                    id="signin"
                >
                    Sign In
                </button>


                <!-- Message -->

                <div
                    class="message"
                    id="message"
                ></div>


            </div>


        </div>


        <!-- Floor glow -->

        <div class="floor-light"></div>


    </div>



    <!-- =====================================
         JAVASCRIPT
    ====================================== -->

    <script>


        /* ================================
           ELEMENTS
        ================================= */

        const scene =
            document.getElementById("scene");

        const chain =
            document.getElementById("chain");

        const signin =
            document.getElementById("signin");

        const username =
            document.getElementById("username");

        const password =
            document.getElementById("password");

        const message =
            document.getElementById("message");


        /* ================================
           INITIAL LIGHT
        ================================= */

        let isOn = false;


        /* ================================
           LAMP ON/OFF
        ================================= */

        function toggleLight() {

            isOn = !isOn;

            if (isOn) {

                scene.classList.add("light-on");

            } else {

                scene.classList.remove("light-on");

            }

        }


        /* ================================
           CLICK PULL CHAIN
        ================================= */

        chain.addEventListener(
            "click",
            toggleLight
        );


        /* ================================
           SIGN IN
        ================================= */

        signin.addEventListener(
            "click",
            function () {


                const name =
                    username.value.trim();

                const pass =
                    password.value.trim();


                /* Turn light ON */

                if (!isOn) {

                    toggleLight();

                }


                /* Check inputs */

                if (name === "") {

                    message.innerText =
                        "Please enter your username.";

                    username.focus();

                    return;
                }


                if (pass === "") {

                    message.innerText =
                        "Please enter your password.";

                    password.focus();

                    return;
                }


                /* Success */

                message.innerText =
                    "✓ Login successful!";

            }
        );


        /* ================================
           ENTER KEY
        ================================= */

        password.addEventListener(
            "keydown",
            function(event) {

                if (event.key === "Enter") {

                    signin.click();

                }

            }
        );


    </script>

</body>
</html>