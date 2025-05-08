# Use a specific version of nginx as the base image
FROM nginxinc/nginx-unprivileged

# Set metadata for the image
LABEL maintainer="DrackThor <daniel@drackthor.me>"
LABEL description="Demo Nginx container for FHB BITI"

# Copy HTML and CSS files to the nginx html directory
COPY assets/ /usr/share/nginx/html/

# Use a non-root user for improved security
# nginx image provides a built-in nginx user
USER nginx

# Expose port 80 for web traffic
EXPOSE 80

# No need for CMD as the nginx base image already includes it
# Default CMD: ["nginx", "-g", "daemon off;"]