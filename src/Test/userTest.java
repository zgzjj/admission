import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.SQLException;


public class userTest {
    private ApplicationContext ctx = null;

          {
                 ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
            }

             @Test
            public void testDataSource() throws SQLException {
                 System.out.println("testDataSource");
                 DataSource dataSource=(DataSource)ctx.getBean("dataSource");
                 System.out.println(dataSource.getConnection());
           }

        }
