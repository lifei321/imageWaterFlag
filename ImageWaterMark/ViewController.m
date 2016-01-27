
/**
 *  ViewController.m
 */
#import "ViewController.h"
#import "UIImage+LL.h"

@interface ViewController ()<UIAlertViewDelegate>

@property(nonatomic, weak) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 80, 375, 300)];
    self.imageView = imageView;
    
    imageView.image = [UIImage imageNamed:@"bg"];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"bg" ofType:@".jpeg"];
    self.imageView.image = [UIImage imageWithContentsOfFile:path];

    [self.view addSubview:imageView];
    
}

- (IBAction)makeWaterMark:(UIButton *)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"打水印" message:@"Are you sure?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}

#pragma mark -UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex NS_DEPRECATED_IOS(2_0, 9_0){
    
    if(buttonIndex == 1){
        /**
         *  这个方法只需要传入一个需要被打水印的图片名字和一个水印图标的名字就可以自动合成水印图片
         */
        UIImage *image = [UIImage waterMarkWithImageName:@"bg.jpeg" andMarkImageName:@"logo"];

        _imageView.image = image;
    }
}

@end
