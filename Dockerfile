# Gunakan Nginx untuk melayani file HTML statis
FROM nginx:alpine

# Salin file index.html ke folder default web server Nginx
COPY index.html /usr/share/nginx/html/index.html

# Buka port 80 untuk lalu lintas HTTP
EXPOSE 80

# Jalankan Nginx saat container dimulai
CMD ["nginx", "-g", "daemon off;"]