package karate.conduit;

import com.intuit.karate.junit5.Karate;
public class RegisterUser {
    @Karate.Test
    Karate RegisterUser(){
        return Karate.run("classpath:karate/conduit/register/registerUser.feature").relativeTo(getClass());
    }
}
