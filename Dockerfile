# Step 1: Use the official lightweight Alpine-Nginx image
FROM nginx:alpine

# Step 2: Set metadata to keep your work organized
LABEL maintainer="yourname@devops.com"
LABEL description="Dockerized version of the Techmax website for DevOps training"

# Step 3: Remove any default placeholder files that Nginx ships with
RUN rm -rf /usr/share/nginx/html/*

# Step 4: Copy the scraped techmax website assets into Nginx's public directory
# (Adjust "techmax.com" if your scraped folder has a slightly different name)
COPY ./techmax.com /usr/share/nginx/html/

# Step 5: Expose standard HTTP web port
EXPOSE 80

# Step 6: Start Nginx in the foreground so the container doesn't immediately exit
CMD ["nginx", "-g", "daemon off;"]

