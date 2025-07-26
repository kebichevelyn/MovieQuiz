import Foundation
import UIKit

final class MovieQuizPresenter {
    
    //MARK: - Private properties
    private let questionsAmount: Int = 10
    private var currentQuestionIndex: Int = 0
    
    //MARK: - Public methods
    func convert(model: QuizQuestion) -> QuizStepViewModel {
        return QuizStepViewModel(
            image: UIImage(data: model.image) ?? UIImage(),
            question: model.text,
            questionNumber: "\(currentQuestionIndex + 1)/\(questionsAmount)")
    }

} 
