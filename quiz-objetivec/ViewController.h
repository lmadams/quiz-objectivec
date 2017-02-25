#import <UIKit/UIKit.h>
#import "PerguntaDao.h"

@interface ViewController : UIViewController

@property IBOutlet UILabel *tituloQuiz;
@property IBOutlet UILabel *perguntaLabel;

@property PerguntaDao *perguntaDao;

@end

