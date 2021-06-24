extension UIViewController {
    static var loading: UIViewController {
        let viewController = UIViewController()

        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.startAnimating()
        viewController.view.addSubview(indicator)

        NSLayoutConstraint.activate([
            indicator.centerXAnchor.constraint(
                equalTo: viewController.view.centerXAnchor
            ),
            indicator.centerYAnchor.constraint(
                equalTo: viewController.view.centerYAnchor
            )
        ])

        return viewController
    }
}

//https://www.swiftbysundell.com/articles/static-factory-methods-in-swift/
