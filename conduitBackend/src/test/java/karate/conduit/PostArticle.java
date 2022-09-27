package karate.conduit;

import com.intuit.karate.junit5.Karate;
public class PostArticle {
    @Karate.Test
    Karate PostArticle(){
        return Karate.run("classpath:karate/conduit/postArticle/postArticle.feature").relativeTo(getClass());
    }
}
