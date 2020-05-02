//StringArrayTest.generateStringArray(5);
public class StringArrayTest {
	public static List<String> generateStringArray(integer numberOfLines) {
        List<String> StringArray = new List<String>();
        for(Integer i=0;i<numberOfLines;i++) {
            StringArray.add('Test '+i);
        }
        System.debug(StringArray);
        return StringArray;
    }
}