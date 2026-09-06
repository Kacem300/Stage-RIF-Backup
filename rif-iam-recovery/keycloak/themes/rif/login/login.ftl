docker exec -i osc-identity-keycloak-1 tee /opt/keycloak/themes/rif/login/login.ftl > /dev/null <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cloud Souverain - Groupe RIF</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: 'Inter', sans-serif; background: #f0eef9; }
        .rif-container { display: flex; min-height: 100vh; }
        .rif-left {
            width: 600px;
            background: linear-gradient(160deg, #0c1033 0%, #12153b 40%, #1a1050 100%);
            display: flex; flex-direction: column; align-items: center; justify-content: center;
            padding: 25px 50px; color: white; overflow: hidden; position: relative;
        }
        .rif-right {
            position: relative; flex: 1; overflow: hidden;
            background: linear-gradient(160deg, #f0eef9 0%, #e8e4f5 50%, #f5f3fa 100%);
            display: flex; flex-direction: column; justify-content: center; align-items: center;
            padding: 60px 40px; border-left: 1px solid rgba(108,99,255,0.2);
        }
        .rif-card {
            position: relative; z-index: 2; width: 100%; max-width: 400px;
            background: #fff; border: 1px solid rgba(108,99,255,0.12);
            border-radius: 16px; padding: 52px 44px;
            box-shadow: 0 8px 32px rgba(108,99,255,0.08);
        }
        .rif-logo { max-width: 260px; height: auto; display: block; margin: 0 auto 24px; }
        .rif-subtitle { font-size: 14px; color: #888; margin: 0 0 32px; text-align: center; }
        .form-group { margin-bottom: 16px; }
        label.control-label {
            color: #444 !important;
            font-size: 13px !important;
            font-weight: 700 !important;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif !important;
            display: inline-block;
            margin-bottom: 6px;
        }
        .hz-icon-required {
            font-size: 6.5px !important;
            line-height: 6.5px !important;
            color: #428bca !important;
            vertical-align: top !important;
            font-family: FontAwesome !important;
            font-weight: 400 !important;
            margin-left: 2px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px !important;
            font-size: 14px !important;
            font-weight: 400 !important;
            color: #333 !important;
            font-family: Arial, Helvetica, sans-serif !important;
            border: 1px solid rgba(108,99,255,0.2) !important;
            border-radius: 8px !important;
            background: #f8f7fc !important;
            outline: none;
            box-sizing: border-box;
        }
        input::placeholder { color: #aaa !important; }
        .has-feedback { position: relative; }
        .has-feedback input { padding-right: 40.625px; }
        .form-control-feedback.password-icon {
            position: absolute;
            top: 0 !important;
            right: 0 !important;
            font-size: 13px !important;
            color: #333 !important;
            width: 32.5px !important;
            height: 32.5px !important;
            line-height: 32.5px !important;
            text-align: center;
            pointer-events: auto;
            cursor: pointer;
            transform: none !important;
        }
        button[type="submit"] {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #6C63FF, #7B68EE);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(108,99,255,0.4);
            margin-top: 12px;
        }
        .rif-footer-links {
            position: relative;
            z-index: 2;
            display: flex;
            justify-content: center;
            gap: 24px;
            margin-top: 28px;
        }
        .rif-footer-links a { font-size: 12px; color: #999; text-decoration: none; }
        .alert-error { color: #cc0000; margin-bottom: 16px; font-size: 13px; }
        @keyframes rif-pulse { 0%,100% { opacity: 1; transform: scale(1); } 50% { opacity: 0.5; transform: scale(1.4); } }
    </style>
</head>
<body>
    <div class="rif-container">
        <!-- Left panel identical to Horizon (unchanged) -->
        <div class="rif-left">
            <canvas id="rif-cv" style="position:absolute;top:0;left:0;width:100%;height:100%;pointer-events:none;z-index:1"></canvas>
            <div style="position:relative;z-index:2;width:100%;max-width:480px;">
                <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:14px;">
                    <img src="https://i0.wp.com/www.grouperif.com/wp-content/uploads/2025/04/logooo.png" style="height:90px;width:auto;">
                    <div style="display:inline-flex;align-items:center;gap:6px;background:rgba(108,99,255,0.2);border:0.5px solid rgba(108,99,255,0.5);border-radius:20px;padding:4px 12px;">
                        <div style="width:6px;height:6px;border-radius:50%;background:#4CAF50;animation:rif-pulse 2s infinite"></div>
                        <span style="font-size:10px;color:rgba(255,255,255,0.7);letter-spacing:1px;text-transform:uppercase;">Infrastructure active</span>
                    </div>
                </div>
                <div style="margin-bottom:18px;">
                    <h1 style="font-size:38px;font-weight:700;line-height:1.2;margin:0 0 6px;">Infrastructure<br>Cloud</h1>
                    <h1 style="font-size:38px;font-weight:700;color:#7B68EE;margin:0 0 14px;">Privée &amp; Sécurisée</h1>
                    <p style="font-size:13px;color:rgba(255,255,255,0.6);line-height:1.6;max-width:400px;">Hébergement souverain sur le territoire national et en France. Conformité totale aux réglementations en vigueur.</p>
                </div>
                <div style="display:grid;grid-template-columns:1fr 1fr;gap:10px;margin-bottom:16px;">
                    <div style="background:rgba(255,255,255,0.04);border:0.5px solid rgba(108,99,255,0.35);border-radius:10px;padding:14px;">
                        <div style="font-size:20px;font-weight:700;color:#7B68EE;">99.99%</div>
                        <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-top:3px;">Disponibilité SLA</div>
                    </div>
                    <div style="background:rgba(255,255,255,0.04);border:0.5px solid rgba(108,99,255,0.35);border-radius:10px;padding:14px;">
                        <div style="font-size:20px;font-weight:700;color:#7B68EE;">2 DC</div>
                        <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-top:3px;">Datacenters FR/TN</div>
                    </div>
                    <div style="background:rgba(255,255,255,0.04);border:0.5px solid rgba(108,99,255,0.35);border-radius:10px;padding:14px;">
                        <div style="font-size:20px;font-weight:700;color:#7B68EE;">ISO 27001</div>
                        <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-top:3px;">Certification</div>
                    </div>
                    <div style="background:rgba(255,255,255,0.04);border:0.5px solid rgba(108,99,255,0.35);border-radius:10px;padding:14px;">
                        <div style="font-size:20px;font-weight:700;color:#7B68EE;">RGPD</div>
                        <div style="font-size:11px;color:rgba(255,255,255,0.5);margin-top:3px;">Conformité</div>
                    </div>
                </div>
                <div style="background:rgba(108,99,255,0.12);border:0.5px solid rgba(108,99,255,0.35);border-radius:10px;padding:14px;margin-bottom:18px;">
                    <div style="display:flex;align-items:center;gap:10px;">
                        <div style="width:30px;height:30px;background:rgba(108,99,255,0.25);border-radius:50%;display:flex;align-items:center;justify-content:center;">
                            <svg width="14" height="14" viewBox="0 0 16 16" fill="none"><path d="M8 1L13 4V8C13 11 10.5 13.5 8 15C5.5 13.5 3 11 3 8V4L8 1Z" stroke="#7B68EE" stroke-width="1.2" fill="rgba(108,99,255,0.15)"/></svg>
                        </div>
                        <div>
                            <div style="font-size:12px;font-weight:600;">Hébergé en Tunisie &amp; France</div>
                            <div style="font-size:10px;color:rgba(255,255,255,0.5);margin-top:2px;">Conformité INTT · HDS · SecNumCloud</div>
                        </div>
                        <div style="margin-left:auto;display:flex;align-items:center;gap:5px;">
                            <div style="width:6px;height:6px;border-radius:50%;background:#4CAF50;animation:rif-pulse 2s infinite"></div>
                            <span style="font-size:10px;color:#4CAF50;font-weight:600;">OPÉRATIONNEL</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="font-size:9px;color:rgba(255,255,255,0.3);letter-spacing:2px;text-transform:uppercase;margin-bottom:10px;">Partenaires &amp; Certifications</div>
                    <div style="display:flex;gap:6px;flex-wrap:nowrap;align-items:center;">
                        <img src="https://i0.wp.com/www.grouperif.com/wp-content/uploads/2025/04/Capture_d_ecran_2025-04-30_101346-removebg-preview.png" style="height:30px;filter:brightness(0) invert(1);opacity:0.5;">
                        <img src="https://i0.wp.com/www.grouperif.com/wp-content/uploads/2025/04/Capture_d_ecran_2025-04-30_101401-removebg-preview.png" style="height:30px;filter:brightness(0) invert(1);opacity:0.5;">
                        <img src="https://i0.wp.com/www.grouperif.com/wp-content/uploads/2025/04/Capture_d_ecran_2025-04-30_101422-removebg-preview.png" style="height:28px;filter:brightness(0) invert(1);opacity:0.5;">
                        <img src="https://i0.wp.com/www.grouperif.com/wp-content/uploads/2025/04/Capture_d_ecran_2025-04-30_101453-removebg-preview.png" style="height:28px;filter:brightness(0) invert(1);opacity:0.5;">
                    </div>
                </div>
                <div style="margin-top:14px;font-size:10px;color:rgba(255,255,255,0.2);">© 2026 RIF Cloud Souverain — Tous droits réservés</div>
            </div>
        </div>

        <!-- Right form panel -->
        <div class="rif-right">
            <canvas id="rif-cv2" style="position:absolute;top:0;left:0;width:100%;height:100%;pointer-events:none;z-index:1"></canvas>
            <div class="rif-card">
                <img src="${url.resourcesPath}/img/blue-logo.png" class="rif-logo" alt="RIF Cloud">
                <p class="rif-subtitle">Accédez à votre console d'administration RIF Cloud.</p>
                <#if message?has_content && (message.type == 'error' || message.type == 'warning')>
                    <div class="alert-error">${message.summary}</div>
                </#if>
                <form id="login_form" action="${url.loginAction}" method="post" autocomplete="off">
                    <input type="hidden" name="credentialId" <#if auth?has_content && auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                    <div class="form-group required">
                        <label class="control-label required" for="id_username">
                            <span class="field-label">User Name</span>
                        </label>
                        <span class="hz-icon-required fa fa-asterisk"></span>
                        <input type="text" name="username" id="id_username" autofocus="autofocus" maxlength="255" class="form-control" value="${(login.username!'')}" autocomplete="username" placeholder="Enter your username">
                    </div>
                    <div class="form-group required">
                        <label class="control-label required" for="id_password">
                            <span class="field-label">Password</span>
                        </label>
                        <span class="hz-icon-required fa fa-asterisk"></span>
                        <div class="has-feedback">
                            <input type="password" name="password" id="id_password" class="form-control" autocomplete="current-password" placeholder="Enter your password">
                            <span class="form-control-feedback fa fa-eye password-icon" id="togglePassword"></span>
                        </div>
                    </div>
                    <button type="submit" id="loginBtn">Se connecter</button>
                </form>
            </div>
            <div class="rif-footer-links">
                <a href="#">Confidentialité</a>
                <a href="#">Support</a>
                <a href="#">Documentation</a>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('togglePassword').addEventListener('click', function() {
            var pwd = document.getElementById('id_password');
            var icon = document.getElementById('togglePassword');
            if (pwd.type === 'password') {
                pwd.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                pwd.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        });

        (function(){
            function createParticles(canvasId, color, opacity){
                var cv = document.getElementById(canvasId);
                if (!cv) return;
                var ctx = cv.getContext('2d');
                var pts = [], t = 0, W, H;
                function resize(){ var r = cv.parentElement.getBoundingClientRect(); W = cv.width = r.width; H = cv.height = r.height; }
                function init(){ pts = []; for (var i=0; i<70; i++){ pts.push({ x: Math.random()*W, y: Math.random()*H, vx: (Math.random()-.5)*.4, vy: (Math.random()-.5)*.4, r: Math.random()*1.8 + .5, a: Math.random() }); } }
                function draw(){
                    ctx.clearRect(0,0,W,H); t += .005;
                    var gx = W*.3 + Math.sin(t)*W*.15; var gy = H*.5 + Math.cos(t*.7)*H*.2;
                    var g = ctx.createRadialGradient(gx, gy, 0, gx, gy, W*.4);
                    g.addColorStop(0, 'rgba('+color+','+opacity*1+')'); g.addColorStop(1, 'rgba('+color+',0)');
                    ctx.fillStyle = g; ctx.fillRect(0,0,W,H);
                    for (var i=0; i<pts.length; i++){
                        var p = pts[i]; p.x += p.vx; p.y += p.vy;
                        if (p.x<0 || p.x>W) p.vx *= -1; if (p.y<0 || p.y>H) p.vy *= -1;
                        ctx.beginPath(); ctx.arc(p.x, p.y, p.r, 0, Math.PI*2);
                        ctx.fillStyle = 'rgba('+color+','+(opacity*7 + Math.sin(t+p.a)*opacity*3)+')'; ctx.fill();
                        for (var j=i+1; j<pts.length; j++){
                            var q = pts[j]; var d = Math.hypot(p.x-q.x, p.y-q.y);
                            if (d < 90){ ctx.beginPath(); ctx.moveTo(p.x,p.y); ctx.lineTo(q.x,q.y); ctx.strokeStyle = 'rgba('+color+','+(opacity*3*(1-d/90))+')'; ctx.lineWidth = .6; ctx.stroke(); }
                        }
                    }
                    requestAnimationFrame(draw);
                }
                resize(); init(); draw();
                window.addEventListener('resize', function(){ resize(); init(); });
            }
            document.addEventListener('DOMContentLoaded', function(){
                createParticles('rif-cv', '108,99,255', 0.08);
                createParticles('rif-cv2', '108,99,255', 0.04);
            });
        })();
    </script>
</body>
</html>
EOF
