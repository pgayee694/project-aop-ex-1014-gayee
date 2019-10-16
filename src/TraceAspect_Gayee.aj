
public aspect TraceAspect_Gayee {
	
	pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);
	
	pointcut methodToTrace(): classToTrace() && execution(public String getName());
	
	before(): methodToTrace() {
		System.out.println("[BGN]: " + thisJoinPoint.getSignature() + ", " + thisJoinPoint.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.println("[END]: " + thisJoinPoint.getSourceLocation().getFileName());
	}
}
