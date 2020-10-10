class String
  def bold; "\e[1m#{self}\e[22m" end
  def regular; "\e[0m#{self}\e[0m"end
    def italic; "\e[3m#{self}\e[23m" end
    def underline; "\e[4m#{self}\e[24m" end
    def blink; "\e[5m#{self}\e[25m" end
    def reverse_color; "\e[7m#{self}\e[27m" end

    def bg_black;       "\e[40m#{self}\e[0m" end
    def bg_magenta;     "\e[45m#{self}\e[0m" end
    def bg_gray;        "\e[47m#{self}\e[0m" end

    def black;          "\e[30m#{self}\e[0m" end
    def red;            "\e[31m#{self}\e[0m" end
    def green;          "\e[32m#{self}\e[0m" end
    def magenta;        "\e[35m#{self}\e[0m" end
    def gray;           "\e[37m#{self}\e[0m" end

end

def burgruine

  puts "-----------------------------------------------------------------------"

  $counter = $counter - 1
  puts "Lebenspunkte:"
  puts $counter

  tu= "Tunnel".underline
  g= " gehen".regular
  wli= "Waldlichtung".underline
  sp= " spazieren".regular
  t= "Tasche".underline
  b= " begutachten".regular

  puts "Die Burgruine ist sehr schön,
vermutlich ist ein Kerzenlichtabendessen hier sehr romantisch"
  puts "Du siehst eine Tür hinter der es in einen Tunnel geht"
  puts "Magst du in den #{tu}#{g},
oder raus aus der Burgruine, auf die #{wli}#{sp},
oder deine #{t}#{b}?"

exec  tuwarawali

end

def wald

  puts "----------------------------------------------------------------------"
  $counter = $counter - 1
  puts "Lebenspunkte:"
  puts $counter

  sw= "Sammelwahn".underline
  v= " verfallen".regular
  wlu= "Waldluft".underline
  gß= " genießen".regular
  wr= "Waldrand".underline
  sp= " spazieren".regular
  wli= "Waldlichtung".underline

  t= "Tasche".underline
  beg= " begutachten".regular

  puts "Du siehst Eichen, Birken, Buchen, Fichten, Lärchen, Kastanien."
  puts "Magst du dem #{sw}#{v},
oder die #{wlu}#{gß},
oder raus aus dem Wald zum #{wr}#{sp},
oder tiefer in den Wald zur #{wli}#{sp},
oder deine #{t}#{beg}?"

end

def tasche

  puts "-----------------------------------------------------------------------"

  $counter = $counter +1
  puts "Lebenspunkte"
  puts $counter



  ka= "Kastanie".underline
  beg= " begutachten".regular
  ko= "Kompass".underline
  ben= " benutzen".regular
  tt= "Taschent".underline
  und= " und".regular
  l= "Liter".regular
  ws= "Wasser".underline
  dabei= " dabei".regular
  km= ",".regular
  tr= " trinken".regular
  eg= "Eingabe".bg_gray.black
  p= ".".regular
  o= " oder".regular
  k = ", ".regular

  if $inventar[:Kastanie] == 1
    pronomenkastanie = "die"
    deklinationka = ""
    deklinationkareg = "".regular
  else
    pronomenkastanie = "die"
    deklinationka = "n".underline
    deklinationkareg = "n".regular
  end

  if $inventar [:Kompass] == 1
    pronomenko = "den"
    deklinationkompass = ""
    deklinationkompassreg ="".regular
  else
    pronomenkompass = "die"
    deklinationkompass = "e".underline
    deklinationkompassreg = "e".regular
  end

  if $inventar [:Taschentücher] == 1
    pronomentaschentuch = "das"
    deklinationtt = "uch".underline
    deklinationttreg = "uch".regular
  else
    pronomentaschentuch = "die"
    deklinationtt = "ücher".underline
    deklinationttreg = "ücher".regular
  end


  if $inventar[:warenblaetterdrin] == true && $inventar[:wareneichelndrin] == false && $inventar [:warenbirkenkaetzchendrin] == false && $inventar [:warenkastaniendrin] == true &&
     $inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false

    bl= "Blaetter".underline
    ver= " verbrennen".regular

    puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
    #{$inventar[:Taschentücher]} Taschent#{deklinationttreg},
    #{$inventar[:LiterWasser]} #{l} Wasser und
    #{$inventar[:Blaetter]} Blätter dabei."

    puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{k}
#{ws}#{tr} oder die #{bl}#{ben}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}."

  elsif $inventar[:wareneichelndrin] ==true && $inventar[:warenblaetterdrin] == false && $inventar [:warenbirkenkaetzchendrin] == false && $inventar [:warenkastaniendrin] == true &&
    $inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false

  ei= "Eicheln".underline
# ru= "rubbeln".regular

  puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
#{$inventar[:Taschentücher]} Taschent#{deklinationttreg},
#{$inventar[:LiterWasser]} l Wasser und
#{$inventar[:Eicheln]} Eicheln dabei."

    puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{k}
#{ws}#{tr} oder die #{ei}#{ben}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}"

elsif $inventar[:wareneichelndrin] ==true && $inventar[:warenblaetterdrin] == true && $inventar [:warenbirkenkaetzchendrin] == false && $inventar [:warenkastaniendrin] == true &&
    $inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false

    ei= "Eicheln".underline
#   ru= "rubbeln".regular
    bl= "Blaetter".underline
#   ver= " verbrennen".regular


    puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
  #{$inventar[:Taschentücher]} Taschent#{deklinationttreg},
  #{$inventar[:LiterWasser]} l Wasser,
  #{$inventar[:Blaetter]} Blätter und
  #{$inventar[:Eicheln]} Eicheln dabei."

      puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{ben},
#{ws}#{tr}oder die #{ei}#{ben}, oder die #{bl}#{ben}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}"

  elsif $inventar[:wareneichelndrin] ==true && $inventar[:warenblaetterdrin] == true && $inventar [:warenbirkenkaetzchendrin] == true && $inventar [:warenkastaniendrin] == true &&
  $inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false

  ei= "Eicheln".underline
# ru= "rubbeln".regular
  bl= "Blaetter".underline
# ver= " verbrennen".regular
  bk= "Birkenkaetzchen".underline

  puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
#{$inventar[:Taschentücher]} Taschent#{deklinationttreg},
#{$inventar[:LiterWasser]} l Wasser,
#{$inventar[:Blaetter]} Blätter,
#{$inventar[:Eicheln]} Eicheln und
#{$inventar[:Birkenkaetzchen]} Birkenkätzchen dabei."

    puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{ben},
#{ws}#{tr} oder die #{ei}#{ben},
die #{bl}#{ben} oder #{bk}#{ben}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}"

  elsif $inventar[:warenblaetterdrin] == false && $inventar[:wareneichelndrin] == false && $inventar [:warenbirkenkaetzchendrin] == false && $inventar [:warenkastaniendrin] == true &&
  $inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false


    puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
#{$inventar[:Taschentücher]} Taschent#{deklinationttreg} und
#{$inventar[:LiterWasser]} l Wasser dabei."


    puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{ben} oder
#{ws}#{tr}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}"

elsif $inventar[:warenblaetterdrin] == true && $inventar[:wareneichelndrin] == false && $inventar [:warenbirkenkaetzchendrin] == true && $inventar [:warenkastaniendrin] == true &&
$inventar [:warentaschentuecherdrin] == true && $inventar [:warenwasserflaschendrin] == true && $inventar [:warwasserdrin] == true && $inventar [:wareinkompassdrin] == false

ei= "Eicheln".underline
# ru= "rubbeln".regular
bl= "Blaetter".underline
# ver= " verbrennen".regular
bk= "Birkenkaetzchen".underline

  puts "Du hast #{$inventar[:Kastanie]} Kastanie#{deklinationkareg},
#{$inventar[:Taschentücher]} Taschent#{deklinationttreg},
#{$inventar[:LiterWasser]} l Wasser,
#{$inventar[:Blaetter]} Blätter und
#{$inventar[:Birkenkaetzchen]} Birkenkätzchen dabei."


  puts "Magst du #{pronomenkastanie} #{ka}#{deklinationka}#{beg},
#{pronomentaschentuch} #{tt}#{deklinationtt}#{ben},
#{ws}#{tr},#{bl}#{o} #{bk}#{ben}?

Wenn du einfach zurück zum Ort des Geschehens willst drücke #{eg}#{p}"

  end

end

def zeugbenutzen

  wasnzeug = gets.strip

  if wasnzeug == "Kastanie" || wasnzeug == "Taschentücher"

    if wasnzeug == "Kastanie"

    j= "Ja".underline
    l = " ".regular
    o= "oder".underline
    n= "Nein".underline
    p= ".".regular

  puts "-----------------------------------------------------------------------"

        if $merkschlossgop == true  || $merkschlossgop == false     #gop= glück oder pech

          if $merkschlossgop == true

            puts "Während du die Kastanie anguckst fragst du dich:
<< Glaube ich daran, dass Kastanien Glück bringen? >>

Schreibe: #{j}#{l}#{o}#{l}#{n}#{p}"

            glückoderpech = gets.strip

          if glückoderpech == "Ja" || glückoderpech == "Nein" || glückoderpech =="oder"

            if glückoderpech == "Ja"

                $glueckoderpech = true

                glück =  "Du hast, solange du Kastanien in der Tasche hast, Glück!".magenta
                aus = " ".gray

                puts "#{glück}#{aus}"

              $merkschlossgop = true

            elsif glückoderpech == "Nein"

              $glueckoderpech = false

              keinglück = "Du hast kein Glück, auch nicht wenn du 50 Kastanien in der Tasche hast.".red
              aus = " ".gray

              puts "#{keinglück}#{aus}"

              $merkschlossgop = true

            elsif glückoderpech == "oder"

              #lower_limit = 0
              #upper_limit = 1

              zufallszahl = Random.new.rand(0..1)   #(lower_limit..upper_limit)

              if zufallszahl == 0 || zufallszahl == 1

                if zufallszahl == 0

                  $glueckoderpech = false

                  nieglück = "Scherzkeks! Du hast jetzt per Zufall nie wieder Glück.".red
                  aus = " ".gray

                  puts "#{nieglück}#{aus}"

                  $merkschlossgop = false

                elsif zufallszahl == 1

                  $glueckoderpech = true


                  glückimunglück = "Du hast jetzt per Zufall Glück, solange du Kastanien in der Tasche hast.
Gerade nochmal davongekommen, Scherzkeks!".green
                  aus = " ".gray

                  puts "#{glückimunglück}#{aus}"

                  $merkschlossgop = true

                end
              end
            end
          end

    elsif $merkschlossgop == false        #hier weiter machen. FUNZT noch nicht vermutlich falsche END spalte! -.-

      $counter = $counter -10
      puts "Zählstand:"
      puts $counter

      ewignieglück = "Hey Scherzkeks! Du hast jetzt per Zufall nie Glück!
 Hättest du dich entschieden zwischen Glauben oder Heidentum, hättest du jetzt
 noch die Chance zum Glauben an Kastanienglück zu wechseln, aber da du << oder >> geschrieben
 hast UND du Pech bei der Zufallszahl hattest, hast du jetzt nie wieder Glück!".red
      aus = " ".gray

     puts "#{ewignieglück}#{aus}"
        end
      end
    end

    if wasnzeug == "Taschentücher"

  end
end
end


def waldlichtungkurz

  puts "-----------------------------------------------------------------------"

  $counter = $counter -10
  puts "Zählstand:"
  puts $counter

  br= "Burgruine".underline
  g= " gehen".regular
  w= "Wald".underline

  t= "Tasche".underline
  b= " begutachten".regular


  puts "Magst du in die #{br}#{g},
oder in den #{w}#{g},
oder deine #{t}#{b}?"

end

def birkenkaetzchensammelwahn2

    sammelwahl2 = gets.strip

  if sammelwahl2 =="Birkenkaetzchen" || sammelwahl2 == "Was anderes" || sammelwahl2 == "weiter"

    if sammelwahl2 == "Birkenkaetzchen"

      birkenkaetzchensammelwahn1

    elsif sammelwahl2 == "Was anderes"

      sammelwahn

    else

      wald

      sawawaluwarawalita

    end

  else

    bk= "Birkenkaetzchen".underline
    sa= " sammeln".regular
    wa= "Was anderes".underline
    wei= "weiter".underline
    sp= " spazieren".regular


    puts "Bitte wähle ob du #{bk}#{sa} magst,
  oder #{wa}#{sa} magst,
  oder #{wei}#{sp} magst?"

  birkenkaetzchensammelwahn2

  end

end

def birkenkaetzchensammelwahn3

  bk= "Birkenkaetzchen".underline
  sa= " sammeln".regular
  wa= "Was anderes".underline
  wei= "weiter".underline
  sp= " spazieren".regular


  puts "Du hast jetzt Birkenkätzchen in der Tasche. Anzahl:"+ $inventar[:Birkenkaetzchen].to_s
  puts "Magst du mehr #{bk}#{sa},
oder #{wa}#{sa},
oder #{wei}#{sp}?"

  exec    birkenkaetzchensammelwahn2

end

def birkenkaetzchensammelwahn1

  puts "-----------------------------------------------------------------------"

  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter

  if $inventar[:Birkenkaetzchen] == 0 || $inventar[:Birkenkaetzchen] == 10 || $inventar[:Birkenkaetzchen] == 20||
    $inventar[:Birkenkaetzchen] == 30 || $inventar[:Birkenkaetzchen] == 40 || $inventar[:Birkenkaetzchen] == 50

    if $inventar[:Birkenkaetzchen] == 0

        $inventar[:Birkenkaetzchen]= 10

        $inventar[:warenbirkenkaetzchendrin] = true

        birkenkaetzchensammelwahn3

    elsif   $inventar[:Birkenkaetzchen]== 10

        $inventar[:Birkenkaetzchen]= 20

        birkenkaetzchensammelwahn3

    elsif   $inventar[:Birkenkaetzchen]== 20

        $inventar[:Birkenkaetzchen]= 30

        birkenkaetzchensammelwahn3

    elsif   $inventar[:Birkenkaetzchen]== 30

        $inventar[:Birkenkaetzchen]= 40

        birkenkaetzchensammelwahn3

    elsif   $inventar[:Birkenkaetzchen]== 40

          $inventar[:Birkenkaetzchen]= 50

          birkenkaetzchensammelwahn3

    else   #50 BLätter

        puts "Deine Tasche ist jetzt zum bersten voller BLätter."

        birkenkaetzchensammelwahn3

      end

    else  puts "How do you turn this on?"
          puts "Please contact costumer support: @ypsilorionthegame on Twitter"

    end

end

def eichelsammelwahn2

  sammelwahl2 = gets.strip

  if sammelwahl2 =="Eicheln" || sammelwahl2 == "Was anderes" || sammelwahl2 == "weiter"

    if sammelwahl2 == "Eicheln"

      eichelsammelwahn1

    elsif sammelwahl2 =="Was anderes"

      sammelwahn

    else

      wald

      sawawaluwarawalita

    end

  else
    $counter = $counter - 5
    puts "Lebenspunkte:"
    puts $counter

    ei= "Eicheln".underline
    sa= " sammeln".regular
    wa= "Was anderes".underline
    wei= "weiter".underline
    sp= " spazieren".regular


  puts "Bitte wähle ob du #{ei}#{sa} magst,
oder #{wa}#{sa} magst,
oder #{wei}#{sp} magst?"

eichelsammelwahn2

  end

end


def eichelsammelwahn3

  ei= "Eicheln".underline
  sa= " sammeln".regular
  wa= "Was anderes".underline
  wei= "weiter".underline
  sp= " spazieren".regular

  puts "Du hast jetzt Eicheln in der Tasche. Anzahl:"+ $inventar[:Eicheln].to_s
  puts "Magst du mehr #{ei}#{sa},
oder #{wa}#{sa},
oder #{wei}#{sp}?"



execute eichelsammelwahn2


end



def eichelsammelwahn1

  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter

  if $inventar[:Eicheln] == 0 || $inventar[:Eicheln] == 10 || $inventar[:Eicheln] == 20||
    $inventar[:Eicheln] == 30 || $inventar[:Eicheln] == 40 || $inventar[:Eicheln] == 50

    if $inventar[:Eicheln] == 0

        $inventar[:Eicheln]= +10

        $inventar [:wareneichelndrin] = true

        eichelsammelwahn3

    elsif   $inventar[:Eicheln]== 10

        $inventar[:Eicheln]= 20

        eichelsammelwahn3

    elsif   $inventar[:Eicheln]== 20

        $inventar[:Eicheln]= 30

        eichelsammelwahn3

    elsif   $inventar[:Eicheln]== 30

        $inventar[:Eicheln]= 40

        eichelsammelwahn3

    elsif   $inventar[:Eicheln]== 40

          $inventar[:Eicheln]= 50

          eichelsammelwahn3

    else   #50 Eicheln

        puts "Deine Tasche ist jetzt zum bersten voller Eicheln."

        eichelsammelwahn3

      end

  else  puts "How do you turn this on?"
        puts "Please contact costumer support: @ypsilorionthegame on Twitter"

  end
end



def blättersammelwahn2

    sammelwahl2 = gets.strip

  if sammelwahl2 =="Blaetter" || sammelwahl2 == "Was anderes" || sammelwahl2 == "weiter"

    if sammelwahl2 == "Blaetter"

      blättersammelwahn1

    elsif sammelwahl2 == "Was anderes"

      sammelwahn

    else

      wald

      sawawaluwarawalita

    end

  else

    bl= "Blaetter".underline
    sa= " sammeln".regular
    wa= "Was anderes".underline
    wei= "weiter".underline
    sp= " spazieren".regular


    puts "Bitte wähle ob du #{bl}#{sa} magst,
  oder #{wa}#{sa} magst,
  oder #{wei}#{sp} magst?"

  blättersammelwahn2

  end

end

def blättersammelwahn3

  bl= "Blaetter".underline
  sa= " sammeln".regular
  wa= "Was anderes".underline
  wei= "weiter".underline
  sp= " spazieren".regular

  puts "Du hast jetzt Blätter in der Tasche. Anzahl:"+ $inventar[:Blaetter].to_s
  puts "Magst du mehr #{bl}#{sa},
oder #{wa}#{sa},
oder #{wei}#{sp}?"

  execute    blättersammelwahn2

end

def blättersammelwahn1

  puts "-----------------------------------------------------------------------"

  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter

  if $inventar[:Blaetter] == 0 || $inventar[:Blaetter] == 10 || $inventar[:Blaetter] == 20||
    $inventar[:Blaetter] == 30 || $inventar[:Blaetter] == 40 || $inventar[:Blaetter] == 50

    if $inventar[:Blaetter] == 0

        $inventar[:Blaetter]= 10

        $inventar[:warenblaetterdrin] = true

        blättersammelwahn3

    elsif   $inventar[:Blaetter]== 10

        $inventar[:Blaetter]= 20

        blättersammelwahn3

    elsif   $inventar[:Blaetter]== 20

        $inventar[:Blaetter]= 30

        blättersammelwahn3

    elsif   $inventar[:Blaetter]== 30

        $inventar[:Blaetter]= 40

        blättersammelwahn3

    elsif   $inventar[:Blaetter]== 40

          $inventar[:Blaetter]= 50

          blättersammelwahn3

    else   #50 BLätter

        puts "Deine Tasche ist jetzt zum bersten voller BLätter."

        blättersammelwahn3

      end

    else  puts "How do you turn this on?"
          puts "Please contact costumer support: @ypsilorionthegame on Twitter"

    end

end


def sammelwahn

  puts "-----------------------------------------------------------------------"

  $counter = $counter +1
  puts "Lebenspunkte:"
  puts $counter

  bl= "Blaetter".underline
  sa= " sammeln".regular
  ei= "Eicheln".underline
  bi= "Birkenkaetzchen".underline
  bu= "Bucheckern".underline
  fi= "Fichtenzapfen".underline
  lä= "Laerchenzapfen".underline
  ka= "Kastanienfruechte".underline
  mo= "Moos".underline
  al= "alles".underline
  komma= ", ".regular


  puts"Magst du #{bl}#{komma}#{ei}#{komma}#{bi}#{komma}#{bu}#{komma}#{fi}#{komma}
#{lä}#{komma}#{ka}#{komma}#{mo}#{komma}oder #{al}#{sa}?"

  sammelwahl = gets.strip

  if sammelwahl =="Blaetter" || sammelwahl == "Eicheln" || sammelwahl == "Birkenkaetzchen" ||
    sammelwahl == "Bucheckern" || sammelwahl == "Fichtenzapfen" || sammelwahl == "Laerchenzapfen" ||
    sammelwahl == "Kastanienfruechte" || sammelwahl =="Moos" || sammelwahl == "alles"

    if sammelwahl == "Blaetter"

      blättersammelwahn1

    elsif sammelwahl == "Eicheln"

      eichelsammelwahn1

    elsif sammelwahl == "Birkenkaetzchen"

      birkenkaetzchensammelwahn1

    elsif sammelwahl == "Bucheckern"

    elsif sammelwahl == "Fichtenzapfen"

    elsif sammelwahl == "Laerchenzapfen"

    elsif sammelwahl == "Kastanienfruechte"

    elsif sammelwahl == "Moos"

    elsif sammelwahl == "alles"


    else

      puts"Bitte wähle ob du #{bl}#{komma}#{ei}#{komma}#{bi}#{komma}#{bu}#{komma}#{fi}#{komma}
#{lä}#{komma}#{ka}#{komma}#{mo}#{komma}oder #{al}#{sa} magst."

    puts"or press quit"

        sammelwahn

    end

  else

    puts"Bitte wähle ob du du #{bl}#{komma}#{ei}#{komma}#{bi}#{komma}#{bu}#{komma}#{fi}#{komma}
#{lä}#{komma}#{ka}#{komma}#{mo}#{komma}oder #{al}#{sa} magst."

  puts"or press Escape"

      sammelwahn

  end
end

def feldweg2

  wara= "Waldrand".underline
  ge= " gehen".regular
  eg= "Eisenbahngleis".underline
  g= " gehen".regular
  t= "Tasche".underline
  beg= " begutachten".regular

    fw = gets.strip

    if fw == "Waldrand" || fw == "Eisenbahngleis" || fw == "Tasche"

      if fw == "Waldrand"

        waldrand

      elsif fw  == "Eisenbahngleis"

        #eisenbahngleis

      elsif fw == "Tasche"

        tasche

      else

        puts "Bitte wähle ob du zu dem #{wara}#{ge} möchtest,
oder zu den #{eg}#{ge} möchtest,
oder die #{ta}#{beg} möchtest."

        feldweg2

      end

    end

end


def feldweg

  puts "-----------------------------------------------------------------------"

  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter

  wara= "Waldrand".underline
  ge= " gehen".regular
  eg= "Eisenbahngleis".underline
  g= " gehen".regular
  t= "Tasche".underline
  beg= " begutachten".regular

  puts "Du stehst auf dem Feldweg, magst du zum #{wara}#{ge},
oder zu dem #{eg}#{ge},
oder die #{t}#{beg}?"

  execute  feldweg2

end


def waldrand2

  wa= "Wald".underline
  ge= " gehen".regular
  fw= "Feldweg".regular
  ge= " gehen".regular
  t= "Tasche".underline
  beg= " begutachten".regular


    wara = gets.strip

    if wara == "Wald" || wara == "Feldweg" || wara == "Tasche"

      if wara == "Wald"

          wald

      elsif wara == "Feldweg"

          feldweg

      elsif wara == "Tasche"

        tasche

        zeugbenutzen

        waldrand

      else

        puts "Bitte wähle ob du in den #{wa}#{ge} möchtest,
oder auf den #{fw}#{ge} möchtest,
oder die #{ta}#{beg} möchtest."

        waldrand2

      end

    end
end



#def eisenbahngleisen

#  eg= "Eisenbahngleisen".underline

#    eg = gets.strip

#    if eg == ""

#end

def waldrand

  puts "-----------------------------------------------------------------------"
  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter


  wa= "Wald".underline
  ge= " gehen".regular
  fw= "Feldweg".underline
  g= " gehen".regular
  t= "Tasche".underline
  beg= " begutachten".regular


  puts "Du stehst am Waldrand, magst du in den #{wa}#{ge},
oder auf den #{fw}#{ge},
oder die #{t}#{beg}?"



  exec  waldrand2


end

def sawawaluwarawalita

  sw= "Sammelwahn".underline
  vf= " verfallen".regular
  walu= "Waldluft".underline
  a= " atmen".regular
  wr= "Waldrand".underline
  s= " spazieren".regular
  wali= "Waldlichtung".underline
  o= " oder".regular
  t= "Tasche".underline
  w= " wühlen".regular

    sawawaluwarawalitaw = gets.strip

#    if sawawaluwarawalitaw == "Sammelwahn" || sawawaluwarawalitaw == "Waldluft" ||
#      sawawaluwarawalitaw == "Waldrand" || sawawaluwarawalitaw == "Waldlichtung" ||
#      sawawaluwarawalitaw == "Tasche"

      if sawawaluwarawalitaw == "Sammelwahn"

        sammelwahn

      elsif sawawaluwarawalitaw == "Waldluft"

        waldluft

      elsif sawawaluwarawalitaw == "Waldrand"

        waldrand

      elsif sawawaluwarawalitaw == "Waldlichtung"

        waldlichtung
        burgruineoderwald


      elsif sawawaluwarawalitaw == "Tasche"

        tasche
        zeugbenutzen
        wald
        sawawaluwarawalita

      else

        $counter = $counter-1

        puts "Lebenspunkte"
        puts $counter

        puts"------------------------------------------------------------------"
        puts "Bitte wähle ob du dem #{sw}#{vf}, #{walu}#{a}, zum #{wr}#{o}
zur #{wali}#{s}, oder in der #{t}#{w} magst."


    exec      sawawaluwarawalita

      end

    end

def waldluft

  $counter = $counter +100

  drgwalu = "Du riechst gesunde Waldluft.".bg_gray.black
  tutgut = "Ah! Tut das gut. Da fühlt man sich als ob man 100 Lebenspunkte dazubekommen würde.".bg_gray.black
  e = "".regular

  puts "#{drgwalu}"
  puts "#{tutgut}#{e}"

#  puts "Lebenspunkte:"
#  puts $counter

  execute  wald
  exec      sawawaluwarawalita

  end


def tuduadru

  puts "-----------------------------------------------------------------------"

  $counter = $counter -1
  puts "Lebenspunkte:"
  puts $counter

  tu= "Tunnel".underline
  el= " entlang".regular
  br= "Burgruine".underline
  g= " gehen".regular
  t= "Tasche".underline
  beg= " begutachten".regular

  puts "Im Tunnel ist es dunkel."
  puts "Magst du darauf hoffen, dass sich deine Augen an die Dunkelheit
gewöhnen und weiter den #{tu}#{el} gehen,
oder raus aus dem Tunnel in die #{br}#{g},
oder deine #{t}#{beg}?"

end

def keinsammelwahnimwald

  waluwarawalita = gets.strip

  if waluwarawalita =="Sammelwahn" || waluwarawalita == "Waldluft" || waluwarawalita == "Waldrand" ||
     waluwarawalita =="Waldlichtung" || waluwarawalita == "Tasche"

     if waluwarawalita == "Sammelwahn"

      sammelwahn

    elsif waluwarawalita == "Waldluft"

      waldluft

    elsif waluwarawalita == "Waldrand"

      waldrand

    elsif waluwarawalita == "Waldlichtung"

      waldlichtung

    elsif waluwarawalita == "Tasche"

      tasche

    else

      puts "-------------------------------------------------------------------"

      puts "How do you turn this on?"
      puts "Please contact costumer support: @ypsilorionthegame on Twitter"

    end

  else

    puts "Bitte entscheide dich, ob du "

  end
end

#keinsammelwahnimwald

def  tuwarawali #tunnelwaldrandoderdazwischen tunnelwaldrandoderwaldlichtung

  tuwarawali = gets.strip

  if tuwarawali == "Tasche" || tuwarawali == "Tunnel" || tuwarawali == "Waldlichtung" ||
     tuwarawali == "Sammelwahn" || tuwarawali == "Waldluft" || tuwarawali == "Waldrand" ||
     tuwarawali == "Kastanie" || tuwarawali == "Kompass" || tuwarawali == "Taschentücher" ||
     tuwarawali == "Wasser"

    if tuwarawali == "Tasche"

      tasche

      zeugbenutzen

      burgruine

    elsif tuwarawali == "Tunnel"

      tuduadru

    elsif tuwarawali == "Waldlichtung"

      waldlichtung

    else    # -D- Inventar/Taschen begutachten

      waldluft

    end
  else    # - - Nix Tun und warten

    $counter = $counter -50

  puts "-----------------------------------------------------------------------"

    puts "Du stehst dumm rum und weißt nicht was du tun sollst: Minus 50 Punkte"

    puts "Lebenspunkte:"
    puts $counter

    puts "Ich will ja nicht drängeln, aber weißt du jetzt was du tun magst?"

    tunnelwaldrandoderdazwischen

  end

end

def burgruineoderwald

  buruodwa = gets.strip

  if buruodwa == "Burgruine" || buruodwa == "Wald"  || buruodwa == "Tasche"
    if  buruodwa == "Burgruine"

      burgruine

      tuwarawali

    elsif buruodwa =="Wald"

      wald

      sawawaluwarawalita

    else      #C Taschen begutachten

      tasche

      zeugbenutzen

      waldlichtungkurz

      burgruineoderwald

    end

  else

      waldlichtungkurz

      burgruineoderwald

  end

end



def waldlichtung

  puts "-----------------------------------------------------------------------"

  $counter = $counter - 1
  puts "Lebenspunkte:"
  puts $counter

  br= "Burgruine".underline
  g= " gehen".regular
  w= "Wald".underline
  t= "Tasche".underline
  b= " begutachten".regular

puts "Du stehst auf einer Waldlichtung."
puts "Mitten auf der Waldlichtung steht eine Burgruine."
puts "Hinter dir beginnt der Wald, der die Lichtung eingrenzt."
puts "Magst du in die #{br}#{g},
oder in den #{w}#{g},
oder deine #{t}#{b}?"


  exec burgruineoderwald

end



def intro

  j= "Ja".underline
  o= " oder ".regular
  n= "Nein".underline
  p= ".".regular


puts"Hallo. Willst du das Tutorial starten?"
puts"Tippe #{j}#{o}#{n}#{p} Und dann Enter drücken."

  execute tutorialwahl

end

def tutorialwahl

  tutorialwahl1= gets.strip

  $merkschlossgop = true                                                          #gop= glück oder pech

  $counter = 1000000000
  $inventar = {:Kastanie => 1,
            :warenkastaniendrin => true,
            :Kompass => 0,
            :wareinkompassdrin => false,
            :Taschentücher => 10,
            :warentaschentuecherdrin => true,
            :Wasserflasche => 1,
            :warenwasserflaschendrin => true,
            :LiterWasser => 0.75,
            :warwasserdrin => true,
            :Blaetter => 0,
            :warenblaetterdrin => false,
            :Eicheln => 0,
            :wareneichelndrin => false,
            :Birkenkaetzchen => 0,
            :warenbirkenkaetzchendrin => false}

  if tutorialwahl1=="Ja"|| tutorialwahl1=="Nein"

    if tutorialwahl1=="Ja"

      exec tutorial

    elsif tutorialwahl1=="Nein"

      execute waldlichtung

    end
  end
end



  def tutorial

    u= "unterstrichenen".underline
    b= " Begriffe".regular


    puts "In diesem Schriftabenteuer wirst du, wie üblich, mit Schrifteingaben
die Geschichte weiterführen. Gebe bitte immer nur die #{u}#{b}
ein und drücke dann Eingabe. Viel Spaß auf deiner Reise durch das Abenteuer."

    execute waldlichtung

  end

intro

#def rathausfeldwegdoderdazwischen

#  abfrage3 = gets.strip

#  if abfrage3 == "A" || abfrage3 == "B" || abfrage3 == "C" || abfrage3 == "D" ||
#    abfrage3 == "E" || abfrage3 == "F" || abfrage3 == "G" || abfrage3 == "H" ||
#    abfrage3 == "I" || abfrage3 == "J" || abfrage3 == "K" || abfrage3 == "L" ||
#    abfrage3 == "M"
#    if abfrage3 == "A" && $counter == 1000000008
#
#      $counter = $counter +10
#      puts "Counter:"
#      puts $counter
#
#      puts "Nach ein paar Minuten Waldspaziergang stehst du mitten im Wald."
#      puts "Magst du A: zurück zum Waldrand gehen, oder B: dich umsehen?"
#
#    elsif abfrage3 == "B" && $counter == 1000000008
#
#      $counter = $counter +5
#      puts "Counter:"
#      puts $counter
#
#      puts "An den Eisenbahngleisen ist alles wie eh und je."
#      puts "Magst du C: nach Südosten zum Wald gehen,
#oder D: nach Nordwesten gehen,
#oder E: dich umsehen?"
#
#    elsif abfrage3 == "C" && $counter == 1000000008
#
#      $counter = $counter +1
#      puts "Counter:"
#      puts $counter
#
#      puts "Magst du F: dich in der Umgebung umsehen,
#oder G: deine Taschen begutachten?"

#    elsif abfrage3 == "D" && $counter == 1000000013
#      puts "Nach ein paar Minuten Dorfspaziergang stehst du auf dem Marktplatz."
#      puts "Magst du H: zurück zum Dorfrand gehen, oder I: dich umsehen?"
#
#    elsif abfrage3 == "E" && $counter == 1000000013
#      puts "An den Eisenbahngleisen ist alles wie eh und je."
#      puts "Magst du J: nach Nordwesten in das Dorf gehen,
#oder K: nach Südwesten gehen?,
#oder L: dich umsehen?"

#    elsif abfrage3 == "F" && $counter == 1000000013
#      puts "Magst du M: dich in der Umgebung umsehen,
#oder N: deine Taschen begutachten?"

#    elsif abfrage3  == "G" && $counter == 1000000018
#      puts "Du gehst nach Südosten und gelangst an einen Wald"
#      puts "Magst du O: in den Wald gehen,
#oder P: zurück zu den Eisenbahngleisen gehen,
#oder Q: dich umsehen?"

#    elsif abfrage3 == "H" && $counter == 1000000018
#      puts "Nach ein paar Minuten Dorfspaziergang stehst du auf dem Marktplatz
#und siehst am Bahnhof den Zug stehen."
#      puts "Magst du R: zum Zug rennen und einsteigen,
#oder S: ein Ticket lösen,
#oder T: dich umsehen?"

#    elsif abfrage3 == "I" && $counter == 1000000018
#      puts "Magst du U: dich in der Umgebung umsehen,
#            oder V: deine Taschen begutachten?"

#    elsif abfrage3 == "J" && $counter == 999999978
#      puts "Ockerbraun ist die Kastanie, Ockerbraun bist du nicht!"
#      puts "Magst du W:nach Südosten gehen,
#oder X: nach Nordwesten gehen,
#oder Y: dich in der Umgebung umsehen,
#oder Z: deine Taschen begutachten?"

#    elsif abfrage3 == "K" && $counter == 999999978
#      puts "Magst du AA: schauen wo Norden ist,
#            oder AB: schauen wie spät es ist?"

#    elsif abfrage3 == "L" && $counter == 999999978
#      puts "Du schnäutzt dir die Nase."
#      puts "Magst du AC:nach Südosten gehen,
#oder AD: nach Nordwesten gehen,
#oder AE: dich in der Umgebung umsehen,
#oder AF: deine Taschen begutachten?"

#    elsif abfrage3 == "M" && $counter == 999999978
#      puts "Wieviele Schluck Wasser magst du trinken?"
#      puts "AG: Einen Schluck."
#      puts "AH: Zwei Schluck."
#      puts "AI: Drei Schluck."
#
#    else
#      puts "Versuch es doch bitte nochmal, danke :)"
#
#      $counter = 999999999
#
#      puts "Du spazierst gerade an Eisenbahngleisen Richtung Südosten."
#      puts "Ein Zug fährt vorbei in Richtung Nordwesten."
#      puts "Magst du A: weiter spazieren, oder B: dich umsehen?"

#      abfrage1def
#      abfrage2def
#      abfrage3def
#    end
#
#  else
#      puts "Du machst also nix. Auch gut."
#  end
#end

#rathausfeldwegoderdazwischen

#def abfrage4def

#  abfrage4 = gets.strip

#  if abfrage4 == "A" || abfrage4 == "B" || abfrage4 == "C" || abfrage4 == "D" ||
#    abfrage4 == "E" || abfrage4 == "F" || abfrage4 == "G" || abfrage4 == "H" ||
#    abfrage4 == "I" || abfrage4 == "J" || abfrage4 == "K" || abfrage4 == "L" ||
#    abfrage4 == "M" || abfrage4 == "N" || abfrage4 == "O" || abfrage4 == "P" ||
#    abfrage4 == "Q" || abfrage4 == "R" || abfrage4 == "S" || abfrage4 == "T" ||
#    abfrage4 == "U" || abfrage4 == "V" || abfrage4 == "W" || abfrage4 == "X" ||
#    abfrage4 == "Y" || abfrage4 == "Z" || abfrage4 == "AA" || abfrage4 == "AB" ||
#    abfrage4 == "AC" || abfrage4 == "AD" || abfrage4 == "AE" || abfrage4 == "AF" ||
#    abfrage4 == "AG" || abfrage4 == "AH" || abfrage4 == "AI"
#
#    if abfrage4 == "A" && $counter == 1000000018
#
#      puts "Nach ein paar Minuten Waldspaziergang stehst du wieder am Waldrand."
#      puts "Magst du A: in den Wald gehen,
#oder B: zu den Eisenbahngleisen spazieren,
#oder C: dich umsehen."

#          elsif abfrage4 == "B" && $counter == 1000000018

#      puts "Du siehst Eichen, Birken, Buchen, Fichten, Lärchen, Kastanien."
#      puts "Magst du D: dem Sammelwahn verfallen,
#oder E: die Waldluft genießen,
#oder F: dich umsehen?"

#          elsif abfrage4 == "C" && $counter == 1000000013

#      puts "Du gehst nach Südosten und gelangst an den Waldrand."
#      puts "Magst du G: in den Wald gehen,
#oder H: zurück zu den Eisenbahngleisen gehen,
#oder I: dich umsehen?"

#          elsif abfrage4 == "D" && $counter == 1000000013

#      puts "Du gehst nach Nordwesten und gelangst an ein Dorf"
#      puts "Magst du J: in das Dorf gehen,
#oder K: zurück zu den Eisenbahngleisen,
#oder L: dich umsehen?"

#          elsif abfrage4 == "E" && $counter == 1000000013
#      puts "In Richtung Nordwesten siehst du ein Dorf."
#      puts "In Richtung Südosten siehst du den Wald."
#      puts "Magst du M: nach Südosten in den Wald gehen,
#oder N: nach Nordwesten in das Dorf gehen,
#oder O: dich umsehen?"

#          elsif abfrage4 == "F" && $counter ==  1000000009
#            puts "Du stehst am Waldrand und siehst den Wald voller Bäume nicht."
#            puts "Magst du P: nach Südosten in den Wald gehen,
#oder Q: nach Nordwesten zu den Eisenbahngleisen gehen,
#oder R: dich umsehen?"

#    else

#    end
#  end
#end

#abfrage4def
