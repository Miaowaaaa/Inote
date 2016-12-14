//
//  ViewController.m
//  iNote
//
//  Created by scrovor on 2016/12/7.
//  Copyright © 2016年 scrovor. All rights reserved.
//

#import "ViewController.h"
#import "NoteBookData.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextView *contentTextField;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NoteBookData *currentNoteBookDate = [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] objectForKey:@"currentNoteBookData"]];
    if(currentNoteBookDate != nil){
        self.titleTextField.text = currentNoteBookDate.title;
        self.contentTextField.text = currentNoteBookDate.content;
        self.dateLabel.text = [NSString stringWithFormat:@"%@",currentNoteBookDate.date];
    }
    
}


- (IBAction)confirmButtonPressed:(id)sender {
    NSLog(@"I have pressed");
    // 存储
    NoteBookData *currentNoteBookData = [[NoteBookData alloc]init];

    currentNoteBookData.title = self.titleTextField.text;
    currentNoteBookData.content = self.contentTextField.text;
    currentNoteBookData.date = [NSDate date];
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:currentNoteBookData] forKey:@"currentNoteBookData"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
