FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files
COPY . /usr/share/nginx/html/

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Render uses port 80 inside the container
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]