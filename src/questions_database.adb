--  This package was generated by a script, do not modify manualy

with STM32F4.RNG.Polling;
with Interfaces; use Interfaces;

package body Questions_Database is
   type Question_Id is mod 15;

   procedure Set_New_Question (QW : in out Question_Window) is
      Index : constant Question_Id :=
        Question_Id (STM32F4.RNG.Polling.Random mod 15);
   begin
      case Index is
      when 0 =>
         QW.Set_Question
           ("When was Lady Ada born?",
            "1852",
            "1823",
            "1815",
            "1515",
            Answer_C);
      when 1 =>
         QW.Set_Question
           ("How Lady Ada used to describe her approach?",
            "Formal science",
            "Poetical science",
            "Analytical science",
            "Musical science",
            Answer_B);
      when 2 =>
         QW.Set_Question
           ("When was AdaCore (ACT) founded?",
            "1993",
            "1994",
            "1995",
            "1996",
            Answer_B);
      when 3 =>
         QW.Set_Question
           ("Which of the following is not an AdaCore tool?",
            "GNATmetric",
            "GNATstack",
            "GNATcov",
            "GNATdebug",
            Answer_D);
      when 4 =>
         QW.Set_Question
           ("Who was the main designer of Ada83?",
            "Tucker Taft",
            "Jay Spitzen",
            "Jean Ichbiah",
            "Benjamin Brosgol",
            Answer_C);
      when 5 =>
         QW.Set_Question
           ("When Ada became an ISO standard?",
            "1983",
            "1985",
            "1986",
            "1987",
            Answer_D);
      when 6 =>
         QW.Set_Question
           ("GNAT is an acronym for",
            "GNU NYU Ada Translator",
            "GNU New Ada Translator",
            "GNAT's Not A Translator",
            "GNAT Needs A Translator",
            Answer_A);
      when 7 =>
         QW.Set_Question
           ("AWS is an acronym for",
            "American Welding Society",
            "Ada Web Server",
            "Automatic Warning System",
            "Alternative Working Solution",
            Answer_B);
      when 8 =>
         QW.Set_Question
           ("When were GNAT sources first contributed to GCC?",
            "2000",
            "2001",
            "2002",
            "2003",
            Answer_B);
      when 9 =>
         QW.Set_Question
           ("The first version of SPARK was based on",
            "Ada 83",
            "Ada 95",
            "Ada 05",
            "Ada 12",
            Answer_A);
      when 10 =>
         QW.Set_Question
           ("GPS is an acronym for",
            "Generalized Processor Sharing",
            "Great Programming Studio",
            "General Problem Solver",
            "GNAT Programming Studio",
            Answer_D);
      when 11 =>
         QW.Set_Question
           ("The subject of the first Ada Gem was",
            "Classwide Operations",
            "Factory Functions",
            "Ada05 Interfaces",
            "Limited Aggregates",
            Answer_D);
      when 12 =>
         QW.Set_Question
           ("Who is the author of the first Ada Gem?",
            "Bob Duff",
            "Matthew Heaney",
            "Franco Gasperoni",
            "Michael Gonzalez",
            Answer_A);
      when 13 =>
         QW.Set_Question
           ("Do you want candies?",
            "Yes",
            "No",
            "No",
            "No",
            Answer_A);
      when 14 =>
         QW.Set_Question
           ("I can has cheezburger?",
            "NO",
            "No",
            "Yes",
            "No",
            Answer_C);
      end case;
   end Set_New_Question;

end Questions_Database;
