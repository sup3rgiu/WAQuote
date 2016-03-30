@interface WAMessageCell : NSObject
 - (void)replyToMessage:(id)fp8;
 @end

%hook WAMessageCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
	//%log;
	//NSLog(@"%s: sender=%@, selector=%@", __FUNCTION__, sender,NSStringFromSelector(action));
	if(action == @selector(replyToMessage:)) {
		return true;
	}
	
	return %orig;
}
%end