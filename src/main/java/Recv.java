import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import com.rabbitmq.client.DeliverCallback;

public class Recv {

    // Mensagem a ser enviada
    private final static String QUEUE_NAME = "hello";

    public static void main(String[] argv) throws Exception {
        // 
        
        // Cria a conexão e usa localhost como servidor de comunicação
        ConnectionFactory factory = new ConnectionFactory();
        factory.setHost("localhost");

        // Cria conexão e canal
        Connection connection = factory.newConnection();
        Channel channel = connection.createChannel();

        // Cria queue
        channel.queueDeclare(QUEUE_NAME, false, false, false, null);
        System.out.println(" [*] Waiting for messages. To exit press CTRL+C");

        // Recebe a mensagem através do loop na função lambda e a imprime
        DeliverCallback deliverCallback = (consumerTag, delivery) -> {
            String message = new String(delivery.getBody(), "UTF-8");
            System.out.println(" [x] Received '" + message + "'");
        };
        channel.basicConsume(QUEUE_NAME, true, deliverCallback, consumerTag -> { });
    }
}
