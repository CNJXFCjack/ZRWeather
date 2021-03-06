//
//  LocationModel.m
//  RYJWeather
//
//  Created by yijie on 2017/3/30.
//  Copyright © 2017年 heinqi. All rights reserved.
//

#import "LocationModel.h"
#import "Location+CoreDataClass.h"
@implementation LocationModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"locationId":@"id",
             @"name":@"name",
             @"country":@"country",
             @"path":@"path",
             @"timezone":@"timezone",
             @"timezone_offset":@"timezone_offset"};
}

- (Location *)modelToNSManagedObject {
    Location *location = [Location insertNewObjectInManagedObjectContext:kAppDelegate.persistentContainer.viewContext];
    location.location_id = self.locationId;
    location.name = self.name;
    location.country = self.country;
    location.path = self.path;
    location.timezone = self.timezone;
    location.timezone_offset = self.timezone_offset;
    
    return location;
}

@end
