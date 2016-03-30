@interface WAMessageCell : NSObject //interface not really required
- (void)replyToMessage:(id)fp8;
@end

//in this way you can also add more actions if you know the selector name (just remove the comments to find all of them..)
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
