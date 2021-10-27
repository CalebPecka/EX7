
public aspect TraceAspect_Pecka {
	
	pointcut classToTrace(): within(*App);
	
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace(){
		System.out.println("Method signature: "+ thisJoinPointStaticPart.getSignature());
		System.out.println("Line number: "+ thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace(){
		System.out.println("File name: "+ thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
