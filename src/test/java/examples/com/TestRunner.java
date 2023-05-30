package examples.com;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testFeatures() {
        return Karate.run("bookStoreAPI").tags("@wip").relativeTo(getClass());
    }
}
