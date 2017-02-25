#import <UIKit/UIKit.h>
#import "PerguntaDao.h"

@interface ViewController : UIViewController

@property IBOutlet UILabel *tituloQuiz;

@property IBOutlet UILabel *perguntaLabel;

@property IBOutlet UILabel *opcaoUmLabel;
@property IBOutlet UILabel *opcaoDoisLabel;
@property IBOutlet UILabel *opcaoTresLabel;

@property IBOutlet UIButton *confereValorBtn;
@property IBOutlet UIButton *opcaoUm;
@property IBOutlet UIButton *opcaoDois;
@property IBOutlet UIButton *opcaoTres;


@property PerguntaDao *perguntaDao;

@end

