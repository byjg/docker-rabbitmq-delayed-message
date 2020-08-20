FROM rabbitmq:3.8-management

COPY rabbitmq_delayed_message_exchange-3.8.0.ez /opt/rabbitmq/plugins

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange \
 && rabbitmq-plugins --offline enable rabbitmq_mqtt \
 && rabbitmq-plugins --offline enable rabbitmq_stomp \
 && rabbitmq-plugins --offline enable rabbitmq_shovel rabbitmq_shovel_management
