package runners;

import com.intuit.karate.junit5.Karate;

class KarateRunner {

    @Karate.Test
    Karate test() {
        return Karate.run("classpath:features/Login").relativeTo(getClass());
    }
}
