@interface PSSpecifier : NSObject
@property (nonatomic,retain) NSString * identifier; 
@end

%hook AboutDataSource
-(id)valueForSpecifier:(PSSpecifier *)specifier {
	
	if ([specifier.identifier isEqualToString:@"NETWORK"]) {
		return @"Custom_Carrier_Name";
	}

	return %orig;
}
%end
