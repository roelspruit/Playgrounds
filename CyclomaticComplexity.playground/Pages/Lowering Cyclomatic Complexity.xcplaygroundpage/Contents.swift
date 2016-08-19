/*: 
 # Splitting up the function
 By breaking up the function on the previous page into smaller component functions, the responsibilities of each function become much clearer. Because the switch-statement and if-statement from the previous function have been split up also, you will have to write fewer tests to achieve complete code coverage
*/

// Tell the user how many filters he has set
// Cyclomatic Complexity: 3
func filterMessageWithFilterCount(filterCount: Int) -> String
{
    switch filterCount {
    case 0:
        return "you have no filters set"
    case 1:
        return "you have \(filterCount) filter set"
    default:
        return "you have \(filterCount) filters set"
    }
}

// Compose a personal welcome message for the user
// Cyclomatic Complexity: 2
func welcomeMessageForUser(userName: String? = nil) -> String
{
    guard let user = userName else {
        return "Hello"
    }
    
    return "Hello \(user)"
}

// Compose the complete header of the page by combining a welcome message and a filtercount message
// Cyclomatic Complexity: 1
func composedHeaderWithWelcomeMessage(welcomeMessage: String, filterMessage: String) -> String
{
    return [welcomeMessage, filterMessage].joinWithSeparator(", ")
}

/*:
 ### Naming
 The naming of the individual functions helps the "user" of the code (you and your coworkers) instantly understand what is going on and what the responsibility of the function is.
 */
print(filterMessageWithFilterCount(1)) // "you have 1 filter set"
print(welcomeMessageForUser()) // "Hello"
print(composedHeaderWithWelcomeMessage("Hello", filterMessage: "you have 2 filters set")) // "Hello, you have 2 filters set"