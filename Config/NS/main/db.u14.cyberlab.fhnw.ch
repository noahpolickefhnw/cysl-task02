;
; BIND data file for local loopback interface
;
; DNSSEC
;$INCLUDE       ./keys/Ku14.cyberlab.fhnw.ch.+010+41400.key
;$INCLUDE       ./keys/Ku14.cyberlab.fhnw.ch.+010+64936.key
$TTL    10
@       IN      SOA     u14.cyberlab.fhnw.ch. mail.u14.cyberlab.fhnw.ch (
                             26         ; Serial
                             10         ; Refresh
                          86400         ; Retry
                             10         ; Expire
                             10 )       ; Negative Cache TTL
;
@       IN      NS      ns1.cyberlab.fhnw.ch.
@       IN      NS      ns2.cyberlab.fhnw.ch.
@       IN      A       192.168.97.112
@       IN      AAAA    ::1
@       IN      MX      10      mail.u14.cyberlab.fhnw.ch.
@       IN      TXT     "v=spf1 include:mail.u14.cyberlab.fhnw.ch ~all"
ns1     IN      A       192.168.97.112
ns2     IN      A       192.168.97.113
mail    IN      A       192.168.97.114
cysl-srv01      IN      CNAME   ns1.u14.cyberlab.fhnw.ch.
cysl-srv02      IN      CNAME   ns2.u14.cyberlab.fhnw.ch.
cysl-srv03      IN      CNAME   mail.u14.cyberlab.fhnw.ch.
default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnF5irwyejD8ke4eBQlHl1Xr9GwoWaCrUROhdOpqoq3UJjYuRZie2o/z1JGcZNYWrwep41nyINngDoBIRV4hhUM2Oab/fkBg9alJYJSYc1oyOboZU9v/JiLU1a0w+qcCrJoLw4BJDW5p8SfUdK90aSpqkH1ImHzRyZjqlrX+qaqHCgqyO54dD2TsrKEk5zan/AxEUWhQ24J+0oR"
          "MhxDwwqxeVrZocEztNg7zuGZsExemsJZ22H9g/GIK4CYauAiqLA9gsJ+R8+JQicuVVu0hiriftwRT0Lv1+8iqfMLyyAv0bNuu8jfuKdKZrqvuHNgZQ4xfXop8cM/zybgh+LEuVHQIDAQAB" )