import ballerina/test;
import ballerina/io;

any [] outputs = [];
int counter = 0;
 // This is the mock function which will replace the real function
@test:Mock {
    packageName : "ballerina.io" ,
    functionName : "println"
}
public function mockPrint (any s) {
    outputs[counter] = s;
    counter++;
}

@test:Config
function testFunc() {
    // Invoking the main function
    main([]);

    json jt1 = {"fname":"John","lname":"Stallone","age":30};
    json jt2 = "John";
    json jt3 = "Stallone";
    json jt4 = {"fname":"John","lname":"Silva","age":31};
    json jt5 = {
                "fname":"Peter",
                "lname":"Stallone",
                "age":30,
                "address":{
                    "line":"20 Palm Grove",
                    "city":"Colombo 03",
                    "country":"Sri Lanka"
                    }
                };
    json jt6 = {
                "fname":"Peter",
                "lname":"Stallone",
                "age":30,
                "address":{
                        "line":"20 Palm Grove",
                        "city":"Colombo 03",
                        "country":"Sri Lanka",
                        "province":"Western"
                    }
                };


    test:assertEquals(outputs[0], "M");
    //test:assertEquals(jt2, outputs[1]);
    //test:assertEquals(jt3, outputs[2]);
    //test:assertEquals(jt4, outputs[3]);
    //test:assertEquals(jt5, outputs[4]);
    //test:assertEquals(jt6, outputs[5]);

}
