/*: Example of a simple function that has a (relatively) high cyclomatic complexity
# A complex function
 This is an example of a function that has too many responsibilities. These responsibilities make it hard to determine what the function actually does. Also, because there are a lot of possible paths through this function you will have to write a lot of tests in order to achieve complete code coverage.
*/

// Composes a complete page header that welcomes the user and tells him how many filters he has set
// Cyclomatic Complexity: 4
func composedHeaderWithFilterCount(filterCount: Int, userName: String? = nil) -> String
{
    var header = ""
    
    // Greet the user
    if let user = userName {
        header += "Hello \(user), "
    } else {
        header += "Hello, "
    }
    
    // Tell the user how many filters he has set
    switch filterCount {
        case 0:
            header += "you have no filters set"
        case 1:
            header += "you have \(filterCount) filter set"
        default:
            header += "you have \(filterCount) filters set"
    }
    
    return header
}

/*:## Using the function*/
print(composedHeaderWithFilterCount(0)) // "Hello, you have no filters set"
print(composedHeaderWithFilterCount(1, userName: "Roel")) // "Hello Roel, you have 1 filter set"
print(composedHeaderWithFilterCount(2, userName: "Roel")) // "Hello Roel, you have 2 filters set"

//: [Let's see how we can simplify this code](@next)