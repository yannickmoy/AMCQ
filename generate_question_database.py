import json

with open('src/database.json') as json_data_file:
    data = json.load(json_data_file)
    if isinstance(data, list):
        with open('src/questions_database.adb', 'w') as output:
            output.write("--  This package was generated by a script, do not modify manualy\n")
            output.write("\n")
            output.write("with STM32F4.RNG.Polling;\n")
            output.write("with Interfaces; use Interfaces;\n")
            output.write("\n")
            output.write("package body Questions_Database is\n")
            output.write("   type Question_Id is mod %d;\n" % len (data))
            output.write("\n")
            output.write("   procedure Set_New_Question (QW : in out Question_Window) is\n")
            output.write("      Index : constant Question_Id :=\n")
            output.write("        Question_Id (STM32F4.RNG.Polling.Random mod %d);\n" % len (data))
            output.write("   begin\n")
            output.write("      case Index is\n")

            cnt = 0
            for question in data:
                output.write("      when %d =>\n" % cnt)
                cnt = cnt + 1
                output.write("         QW.Set_Question\n")
                output.write("           (\"%s\",\n" % question["Q"])
                output.write("            \"%s\",\n" % question["A"])
                output.write("            \"%s\",\n" % question["B"])
                output.write("            \"%s\",\n" % question["C"])
                output.write("            \"%s\",\n" % question["D"])
                output.write("            Answer_%s);\n" %
                             question["Correct_Answer"])

            output.write("      end case;\n")
            output.write("   end Set_New_Question;\n")
            output.write("\n")
            output.write("end Questions_Database;\n")

    else:
        print "invalid question data"