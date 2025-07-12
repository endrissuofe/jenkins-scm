# Use an official Nginx image as the base
FROM nginx:latest

# Remove the default Nginx index.html
RUN rm /etc/nginx/html/index.html

# Copy your custom index.html into the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
