# Add a custom header to response

exec { 'Add_header':
    provider => 'shell',
    command  => 'sudo apt-get update -y; sudo apt-get install nginx -y;
    sudo echo "Hello World!" > /var/www/html/index.html;
    sudo sed -i \'/server_name _/a \\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;\' /etc/nginx/sites-enabled/default;
    sudo sed -i \'/rewrite/a \\terror_page 404 /error404.html;\' /etc/nginx/sites-enabled/default;
    sudo sed -i \'/server_name _/a \\tadd_header X-Served-By $hostname;\' /etc/nginx/sites-enabled/default; sudo service nginx restart'
}
