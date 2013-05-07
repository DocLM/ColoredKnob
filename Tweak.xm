%hook SBAwayLockBar
-(id)initWithFrame:(CGRect)frame knobImage:(id)image
{
    NSMutableDictionary *plist = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.blackcrafter.ColoredKnob.plist"];
    UIImage *Slider = [UIImage alloc];
    static BOOL enable = NO;
    static BOOL randomslider = NO;
    static BOOL longslider = NO;
    int color = 0;
    srand(time(NULL));
    longslider = [[plist objectForKey:@"LongSlider"]boolValue];
    randomslider = [[plist objectForKey:@"random"]boolValue];
    color = [[plist objectForKey:@"color"]integerValue];
    enable = [[plist objectForKey:@"enabled"]boolValue];
    if(!enable)
    {
        return %orig(frame,image);
    }
    else
    {
        if(randomslider)
        {
            color = rand()%10;
            while(color==8)
                color = rand()%10;
        }
        switch(color)
        {
            case 0:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderGreen.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderGreen.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 1:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderGrey.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderGrey.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 2:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderRed.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderRed.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 3:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderBlue.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderBlue.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 4:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderYellow.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderYellow.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 5:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderPink.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderPink.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 6:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderViolet.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderViolet.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 7:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderBlack.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderBlack.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            case 9:
                if(!longslider)
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS5/SliderLightBlue.png"];
                }
                else
                {
                    Slider = [UIImage imageWithContentsOfFile:@"/Library/PreferenceLoader/Preferences/ColoredKnob/iOS4/SliderLightBlue.png"];
                }
                image=Slider;
                return %orig(frame,image);
                break;
            default:
                return %orig(frame,image);
                break;
        }
    }
}
%end