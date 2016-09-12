
var deliLine: [String] = ["Jacq", "Mike", "Liz"]

func addNameToDeliLine(name:String) {
    var message = ""
    if name == "Billy Crystal" {
        deliLine.insert(name, atIndex: 0)
        message = "Welcome Billy! You can sit wherever you like."
    }
    else if name == "Meg Ryan" {
        deliLine.insert(name, atIndex: 0)
        message = "Welcome Meg! You can sit wherever you like."
    }
    else {
        deliLine.append(name)
        message = "Welcome \(name), you're number \(deliLine.count) in line"
    }
    message
}

addNameToDeliLine("Meg Ryan")
deliLine

addNameToDeliLine("Raph")
deliLine


func nowServing() {
    var message = ""
    if deliLine.isEmpty {
        message = "There is no one to be served."
    } else {
        message = "Now serving \(deliLine[0])"
        deliLine.removeAtIndex(0)
    }
    message
}

nowServing()
deliLine

func deliLineDescription() {
    var message = ""
    if deliLine.isEmpty {
        message = "The line is currently empty."
        } else {
            message = "The line is:"
            for (index, name) in deliLine.enumerate() {
        message = message + " \(index+1). \(name)"
            }
        message
    }
}

deliLineDescription()