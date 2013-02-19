# Lock Screen Example

This is a simple example showing how to create a lock screen in iOS.

**This example uses Xibs. The storyboard version is forthcoming.**

## How it works

The main Xib contains two views; one for the mai UI and one for the UI that will be used as the lock overlay.

The main UI has a property for the lock overlay: 

    @property (strong, nonatomic) IBOutlet UIView *lockScreenView;
    
The File's Owner of the overlay view is set to this property in the Xib.

A second view is created in the main UI to handle the transparency portion of the overlay:

    @interface MTViewController ()
        @property (strong, nonatomic) UIView *lockScreenCanvasView;
    @end

    @implementation MTViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        … setup ...
        self.lockScreenCanvasView = [[UIView alloc] initWithFrame:self.lockScreenView.bounds];
        self.lockScreenCanvasView.backgroundColor = [UIColor blackColor];
        [self.lockScreenCanvasView setAlpha:0.5];
    }
    
When the `Lock` button is selected, the UI is changed like this:

    - (void)lockScreen:(id)sender
    {
        [self.view addSubview:self.lockScreenCanvasView];
        [self.view addSubview:self.lockScreenView];
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }
    
*The navigation controller is hidden because the view overlay will not cover it and any buttons there will remain selectable.*
    
The slider is hooked up to the main UI as follows:

    - (IBAction)unlockSlider:(id)sender
    {
        UISlider *uis = (UISlider*)sender;
        int sliderValue = (int)(uis.value + 0.5f);
        if (sliderValue == 100) {
            uis.value = 0.0f;
            [self.navigationController setNavigationBarHidden:NO animated:YES];
            [self.lockScreenCanvasView removeFromSuperview];
            [self.lockScreenView removeFromSuperview];
        } else {
            [UIView 
             animateWithDuration:0.35 
             delay:0 
             options:UIViewAnimationCurveEaseOut 
             animations:^{ uis.value = 0.0f; } 
             completion:NULL];
        }
    }
    
This is the meat of the behavior. If the slider has been moved all the way to the right its value will be 100; this will trigger the restoration of the navigation controller and the lock views will be removed.