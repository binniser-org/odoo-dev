FROM odoo:20.0

USER root
COPY ./custom-addons /mnt/extra-addons
RUN chown -R odoo:odoo /mnt/extra-addons
USER odoo
