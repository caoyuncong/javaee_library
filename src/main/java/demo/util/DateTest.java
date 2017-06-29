package demo.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by caoyuncong on
 * 2017/6/16 20:00
 * javaee_library.
 */
public class DateTest {
    public static void main(String[] args) {
        Date date = new Date();
        System.out.println(date);

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(format.format(date));
    }
}
