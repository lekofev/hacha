server {
  listen 80

  root /var/www/hacha;
  server_name hachastudio.com;
  index index.html index.htm index.php;

  client_max_body_size 6M;
 
  tcp_nodelay on;

  location / {
    proxy_set_header Host $host;
    proxy_buffering off;
  }
}

