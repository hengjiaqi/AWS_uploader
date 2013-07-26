


// Constants used to represent your AWS Credentials.
#define ACCESS_KEY_ID          @"AKIAJSQDERQGGCGSWXNA"
#define SECRET_KEY             @"kbhuSEd2sbuwGZe3r/TGlnP5ueaU3ND7v9JM4nxl"


// Constants for the Bucket and Object name.
#define PICTURE_BUCKET         @"picture-bucket"
#define PICTURE_NAME           @"NameOfThePicture"


#define CREDENTIALS_ERROR_TITLE    @"Missing Credentials"
#define CREDENTIALS_ERROR_MESSAGE  @"AWS Credentials not configured correctly.  Please review the README file."


@interface Constants:NSObject {
}

/**
 * Utility method to create a bucket name using the Access Key Id.  This will help ensure uniqueness.
 */
+(NSString *)pictureBucket;

@end
