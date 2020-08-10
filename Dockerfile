FROM rabbitmq:3.8-management

ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez /opt/rabbitmq/plugins

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
