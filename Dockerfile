FROM php:7.4-apache

# System dependencies
RUN set -eux; \
        \
        apt-get update; \
        apt-get install -y --no-install-recommends \
                zip \
                git \
                librsvg2-bin \
                imagemagick \
                # Required for SyntaxHighlighting
                python3 \
        ; \
        rm -rf /var/lib/apt/lists/*
        
CMD ["apache2-foreground"]
