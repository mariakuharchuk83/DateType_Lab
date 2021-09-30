//
//  DateTime.swift
//  playground
//
//  Created by Марія Кухарчук on 30.09.2021.
//

import Foundation

//MARK: class for implementing DataType Data(17.05.03 10:23:13)
public class DateTime :NSObject{
    /** randomazer */
    private var random :RandomNumGenegator
    // date components
    private var year :Int
    private var month :Int
    private var day :Int
    private var hour :Int
    private var minute :Int
    private var second :Int

    /**
    empty class constructor for initializing variables with default value
    */
    public override init() {
        random = RandomNumGenegator()
        year = random.randomInteger(1600, 2021)
        month = random.randomInteger(1, 12)
        month = random.randomInteger(1, 12)
        hour = random.randomInteger(0, 23)
        minute = random.randomInteger(0, 59)
        second = random.randomInteger(0, 59)
        day = 0
        super.init()
        day = initDay(yr: year, mnth: month)
    }
    
    public func initDay(yr :Int,mnth :Int)->Int{
       return random.randomInteger(1, daysInMonth(year: yr, month: mnth))
    }
    
    /**
     class constructor for initializing variables with given value
     Parameters : given data components
    */
    public init(year :Int, month :Int, day :Int, hour :Int, minute :Int, second :Int)
    {
        random=RandomNumGenegator()
        self.year = year
        self.month = month
        self.day = day
        self.hour = hour
        self.minute = minute
        self.second = second
    }

    //functions to get private value for each component of the date
    public func getYear() ->Int{ return year }
    public func getMonth() ->Int{ return month }
    public func getDay() ->Int{ return day }
    public func getHour() ->Int{ return hour }
    public func getMinute() ->Int{ return minute }
    public func getSecond() ->Int{ return second }

    
    
    /**
     function for cheking is Leap
     Parameter year: given year
     Return: true - year is leap, false - year isn't leap
     */
    public func isYearLeap(year: Int)->Bool{
        if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0){
            return true
        }
        else{
            return false
        }
    }
    
    /**
        function for getting number of days in a year
        Paraneter year: given year
        Return: number of days in a year
    */
    public func daysInYear(year :Int) ->Int{
        if isYearLeap(year: year){
        return 366
        }
        else{
            return 365
        }
    }
    
    /**
     function for getting number of days in a month
     Paraneter year: given year
     Paraneter month: given month
     Return: number of days depending on the year and month
     */
    public func daysInMonth(year:Int,month:Int)->Int{
        if month == 2 && isYearLeap(year: year) {
        return 29
        }
        
        if month == 2 {
            return 28
        }
        
        if month == 4 || month == 6 || month == 9 || month == 11 {
            return 30
        }
        
            return 31;
    }

    /**
    function for checking if date is correct
    Return: true if date is correct,  false if incorrect
    */
   public func isDateCorrect()->Bool {
    if month > 12 || month < 0 || hour > 23 || hour < 0 || minute > 59 || minute < 0 || second > 59 || second < 0{
        return false
    }
    
    if day < 0 || day > daysInMonth(year: year,month: month){
        return false
    }
    
    return true
}

    /**
    function that returns umber of days from the beginning of the calendar to the date
    Return: number of days from the beginning of the calendar
    */
    public func daysFromBeginning() ->Int{
        var d = 0;
        for yr in 1...year{
            d = d + daysInYear(year: yr)
        }
        for mnth in 1...month{
            d = d + daysInMonth(year:year, month: mnth)
        }
        return d + day;
    }
    
    /**
    function that returns Number of days between two dates
    Parameter: instance DateTime
    Return: number of days between two datesr
    */
    public func daysSubstraction(D :DateTime) ->Int{
        let d = abs(D.daysFromBeginning() - daysFromBeginning());
        return d;
    }

    /**
     function that adds substraction of days to date
     Parameter: number of days
    */
    public func substractionAdding(days: Int) {
        for _ in  0...days {
            day+=1
            if day > daysInMonth(year: year, month: month) {
                day = 1
                month+=1
            }
            if month > 12 {
                month = 1
                year+=1
            }
        }
    }
    
    /**
        Shifting the day of the week counting from the beginning of the calendar
        Return: shift - shifting the day of the week counting from the beginning of the calendar
    */
    public func dayOfWeek()->Int {
        if !self.isDateCorrect(){
            print("The date is not correct for now\n")
            return -1
        }
        var shift = 1
        for currentYr in 1...year {
            if isYearLeap(year: currentYr){
                shift += 2//in intercalary years weekday shifts on 2 days
            }
            else{
                shift+=1
            }
        }
        for currentMnth in 1...month{
            shift += daysInMonth(year: year, month: currentMnth)
        }
        shift = shift + day - 1
        return shift
    }
    
    /**
    function for printing date
    */
    public func getDayOfWeek() ->String{
        var shift = dayOfWeek()
        if (shift < 0) {
           print("The date is not correct for now\n")
           return ""
        }

        shift = shift % 7
        switch shift {
        case 1: return "Monday"
        case 2: return "Tuesday"
        case 3: return "Wednesday"
        case 4: return "Thursday"
        case 5: return "Friday"
        case 6: return "Saturday"
        case 0: return "Sunday"
        default:
            return "The date is not correct"
        }
    }
    
    /**
     print all atributes of the date
     */
    public func printAllDate()
    {
       print("year\tmonth\tday\thour:minute:second")
        print("\(getYear())\t\(getMonth())\t\t\(getDay())\t\(getHour()) : \(getMinute()) : \(getSecond())")
    }
}



