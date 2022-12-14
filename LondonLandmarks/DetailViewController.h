//
//  DetailViewController.h
//  LondonLandmarks
//
//  Created by André Almeida on 2022-10-19.
//

#import <UIKit/UIKit.h>
#import <Mapkit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property(strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailAddress;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)directions:(id)sender;

@end

NS_ASSUME_NONNULL_END
