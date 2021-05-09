import java.util.Base64;

/**
 * Created by lib on 2021-05-09
 */
public class HelloClassLoader extends ClassLoader {


    public static void main(String[] args) throws Exception {
        new HelloClassLoader().findClass("jvm.Hello").newInstance();
    }

    /**
     * 重写findClass
     *
     * @return
     */
    @Override
    protected Class<?> findClass(String name) {
        String helloBase64 = "yv66vgAAADcAHAoABgAOCQAPABAIABEKABIAEwcAFAcAFQEABjxpbml0PgEAAygpVgEABENvZGUBAA9MaW5lTnVtYmVyVGFibGUBAAVoZWxsbwEAClNvdXJjZUZpbGUBAApIZWxsby5qYXZhDAAHAAgHABYMABcAGAEAE0hlbGxvLCBjbGFzc0xvYWRlciEHABkMABoAGwEABUhlbGxvAQAQamF2YS9sYW5nL09iamVjdAEAEGphdmEvbGFuZy9TeXN0ZW0BAANvdXQBABVMamF2YS9pby9QcmludFN0cmVhbTsBABNqYXZhL2lvL1ByaW50U3RyZWFtAQAHcHJpbnRsbgEAFShMamF2YS9sYW5nL1N0cmluZzspVgAhAAUABgAAAAAAAgABAAcACAABAAkAAAAdAAEAAQAAAAUqtwABsQAAAAEACgAAAAYAAQAAAAEAAQALAAgAAQAJAAAAJQACAAEAAAAJsgACEgO2AASxAAAAAQAKAAAACgACAAAABAAIAAUAAQAMAAAAAgAN";
        byte[] bytes = decode(helloBase64);
        return defineClass(name,bytes,0,bytes.length);
    }

    /**
     * 进行解码
     *
     * @param helloBase64
     * @return
     */
    public byte[] decode(String helloBase64) {
        return Base64.getDecoder().decode(helloBase64);
    }

}
