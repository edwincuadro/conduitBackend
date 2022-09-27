package karate.conduit;

import com.intuit.karate.junit5.Karate;
public class DeleteArticle {
    @Karate.Test
    Karate DeleteArticle(){
        return Karate.run("classpath:karate/conduit/deleteArticle/delete.feature").relativeTo(getClass());
    }
}
