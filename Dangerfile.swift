import Danger


let danger = Danger()

if let additions = danger.github.pullRequest.additions,
    let deletions = danger.github.pullRequest.deletions {
    
    // Check to see if the pull request delta contains a significant
    // amount of changes.
    let bigPRThreshold = 750
    
    if additions + deletions > bigPRThreshold {
        warn("Hey @\(danger.github.pullRequest.user.login)! This pull request seems relatively large. If this pull request contains multiple changes, please consider splitting each into separate PRs to make reviewing faster and easier.")
    }
    
    // Celebrate! You are awesome. ☺️
    if deletions > additions {
        message("Nice work on trimming down the codebase by \(deletions - additions) lines! 🥳")
    }
    
}

// Run linting.
SwiftLint.lint(directory: "../")
