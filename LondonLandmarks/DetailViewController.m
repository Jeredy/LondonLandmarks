//
//  DetailViewController.m
//  LondonLandmarks
//
//  Created by André Almeida on 2022-10-19.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mapView.layer.cornerRadius = 5;
    self.button.layer.cornerRadius = 5;
    
    self.navigationItem.title = self.detailModal[0];
    
    self.detailTitle.text = self.detailModal[0];
    self.detailAddress.text = self.detailModal[1];
    self.detailImage.image = [UIImage imageNamed:self.detailModal[2]];
    self.detailDescription.text = self.detailModal[3];
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = [self.detailModal[4] doubleValue];
    location.longitude = [self.detailModal[5] doubleValue];
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
}
@end
