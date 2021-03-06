<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SCC | @lang("Sign In")</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" style="width: 1vw" href="../assets/logo/hcmut-logo.png"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="../assets/css/custom.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../assets/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="../assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- Flag Icon -->
    <link rel="stylesheet" href="../assets/css/flag-icon.min.css">
</head>
<body class="hold-transition login-page login-page-custom outside-body">
<div class="login-box login-box-custom">
  <div class="login-logo">
{{--    <a href="@lang("dashboard")"><b>SCC</b></a>--}}
  </div>
  <!-- /.login-logo -->
    <div class="parallax-container">
        <ul id="scene">
            <li class="layer" data-depth="1"><img src="../assets/img/planet1.png"></li>
            <li class="layer" data-depth="-1"><img src="../assets/img/planet2.png"></li>
            <li class="layer" data-depth="2"><img src="../assets/img/astronaut.png"></li>
            <li class="layer" data-depth="2"><img src="../assets/img/rocket.png"></li>
        </ul>
    </div>
  <div class="card">
    <div class="card-body login-card-body custom-login-card-body">
        <div class="login100-pic js-tilt" data-tilt>
            <img src="../assets/logo/hcmut-logo-removebg.png" alt="IMG">
        </div>
      <p class="login-box-msg login-box-msg-custom">SCC - @lang("Let's Sign In")</p>

        <form action="send-sign-in" method="post">
            {{csrf_field()}}
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="input-group mb-3">
                <input name="user_email" type="email" class="form-control" placeholder="@lang('Email')">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                    </div>
                </div>
            </div>
            <div class="input-group mb-3">
                <input name="user_password" type="password" class="form-control" placeholder="@lang('Password')">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                    </div>
                </div>
            </div>
            @if(Cookie::get('1752051_captcha') == true)
                <div class="input-group mb-3">
                    <label for="captcha">@lang('Captcha')</label>
                    {!! NoCaptcha::renderJs() !!}
                    {!! NoCaptcha::display() !!}
                    <span class="text-danger">{{ $errors->first('g-recaptcha-response') }}</span>
                </div>
            @endif
            <div class="row">
                <div class="col-8">
                    <div class="icheck-primary">
                        <input name="user_remember" type="checkbox" id="remember">
                        <label for="remember">
                            @lang("Remember Me")
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-4">
                    <button type="submit" class="btn btn-primary btn-block">@lang('Sign In')</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

{{--        <div class="social-auth-links text-center mb-3">--}}
{{--            <p>- @lang('OR') -</p>--}}
{{--            <a href="#" class="btn btn-block btn-primary">--}}
{{--                <i class="fab fa-facebook mr-2"></i> @lang('Sign in using Facebook')--}}
{{--            </a>--}}
{{--            <a href="#" class="btn btn-block btn-danger">--}}
{{--                <i class="fab fa-google-plus mr-2"></i> @lang('Sign in using Google+')--}}
{{--            </a>--}}
{{--        </div>--}}
        <!-- /.social-auth-links -->

        <p class="mb-1">
            <a href="forgot-password">@lang('I forgot my password')</a>
        </p>
        <p class="mb-0">
            <a href="sign-up" class="text-center">@lang('Register a new profile')</a>
        </p>

        <br>

        @include("include/change-language-outside")

    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/js/adminlte.min.js"></script>
<!-- Tilt -->
<script src="../assets/js/tilt.jquery.min.js"></script>
<script >
    $('.js-tilt').tilt({
        scale: 1.1
    })
</script>
<script src="../assets/js/parallax.js"></script>
<script>
    var scene = document.getElementById('scene');
    var parallax = new Parallax(scene);
</script>
<!-- Select2 -->
<script src="../assets/plugins/select2/js/select2.full.min.js"></script>
<script>

    function formatState (state) {
        if (!state.id) { return state; }
        var $state = $(
            '<span><span class="flag-icon flag-icon-' +  state.element.value.toLowerCase() + '"></span>&ensp;' +
            state.text +     '</span>'
        );
        return $state;
    };

    $(function () {

        //Initialize Select2 Elements
        $('#select2bs4-language').select2({
            templateResult: formatState,
            templateSelection: formatState,
            theme: 'bootstrap4',
            language: {
                "noResults": function(){
                    return $('#select2-noResults').val();
                }
            }
        })

        $('#select2bs4-language').on('select2:select', function (e) {
            var data = e.params.data;
            // console.log(data);
            $.ajax({
                url: "change-language-cookie",
                type: "POST",
                data: {_token: "{{csrf_token()}}", user_lang: data.id },
                async: false,
                success: function (data) {
                    // alert(data);
                    window.location.reload();
                }
            })
        });

    });
</script>
</body>
</html>
