//
//  ViewControllerContainer.m
//  ContainerView
//
//  Created by Nagam Pawan on 10/4/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewControllerContainer.h"
#import "CollectionViewCell.h"

@interface ViewControllerContainer ()

@end

@implementation ViewControllerContainer

- (void)viewDidLoad {
    [super viewDidLoad];
    images = [[NSArray alloc]initWithObjects:@"115_N1acOzVz.jpg", @"absnature_XEnZpCW8.jpg", @"beach_tSE9xWS0.jpg", @"bridge_rn8RdTVA.jpg", @"classiccou_qHRtcBnf.jpg", @"Naturaleza_3471022_jpg.jpg", @"paradise_JU2DSF2s.jpg", @"tulips_xFhhDQ9x.jpg", nil];
    self.automaticallyAdjustsScrollViewInsets = false;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return images.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.item]];
    return cell;
}
@end
