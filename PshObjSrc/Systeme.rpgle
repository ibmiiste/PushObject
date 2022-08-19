**FREE

ctl-opt nomain option(*nodebugio:*srcstmt:*nounref) CCSIDCVT(*List);

/include systeme_h.rpgleinc

dcl-proc connectionFtp export;
dcl-pi connectionFtp;
    systemeToConnect likeds(Systeme);
end-pi;

    if systemeToconnect.name <> *blanks;
      ftp(systemeToConnect.name);
    elseif systemeToconnect.iPAddressV4 <> *Blanks;
        ftp(systemeToConnect.iPAddressV4);    
    else;
        dsply 'Nom ou adresse ip non fourni';
    endif;

    return;

end-proc;