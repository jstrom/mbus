package mbus;

import java.nio.*;
import java.io.*;
import java.nio.channels.*;
import java.net.*;

public class MBusTest
{
    public static void main(String args[]) throws IOException
    {

        URL website = new URL("http://mbus.pts.umich.edu/shared/location_feed.xml");
        ReadableByteChannel rbc = Channels.newChannel(website.openStream());
        FileOutputStream fos = new FileOutputStream("location_feed.xml");
        fos.getChannel().transferFrom(rbc, 0, 1 << 24);
    }
}