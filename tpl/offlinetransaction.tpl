<!-- send transaction -->
<div class="tab-pane" id="paneOfflineTrans" style="display: none;">
  <h2> Send Offline Transaction </h2>
  <p class="text-danger"> This is an advanced feature and should only be used by advanced users. This will allow you to generate a transaction offline, move the signed transaction to an online computer, and send the transaction. It can also be used to send data with your transaction.</p>
  <section class="row" id="walletselection">
    <div class="col-md-4 col-sm-6">
      <h4> How would you like to access your wallet? </h4>
      <div class="radio">
        <label>
          <input type="radio" name="typeOfKeyRadio" value="fileupload">Upload Your Wallet File <small>(JSON from presale / geth / MyEtherWallet).</small></label>
      </div>
      <div class="radio">
        <label>
          <input type="radio" name="typeOfKeyRadio" value="pasteprivkey">Paste/Type Your Encrypted or Unencrypted Private Key.</label>
      </div>
    </div>
    <div class="col-md-4 col-sm-6">
      <!-- if selected upload -->
      <div id="selectedUploadKey" style="display: none;">
        <h4>Select your wallet file : </h4>
        <div class="form-group">
          <p id="file-text"></p>
          <a class="file-input btn btn-block btn-default btn-file marg-v-sm" id="fileUpload">SELECT WALLET FILE... <input type="file"></a>
          <div id="fuploadStatus"></div>
        </div>
        <div class="form-group" id="walletPasdiv" style="display: none;">
          <p> your file is encrypted with a password, enter the password here: </p>
          <input class="form-control" type="password" placeholder="Password" id="walletfilepassword">
        </div>
      </div>
      <!-- /if selected upload -->
      <!-- if selected type key-->
      <div id="selectedTypeKey" style="display: none;">
        <h4> Paste / type your private key: </h4>
        <div class="form-group">
          <textarea rows="4" class="form-control" placeholder="Private Key" id="manualprivkey"></textarea>
        </div>
        <div class="form-group" style="display: none;" id="divprikeypassword">
          <p> Your file is encrypted with a password, enter the password here: </p>
          <input class="form-control" type="password" placeholder="Password" id="privkeypassword">
        </div>
      </div>
      <!-- /if selected type key-->
    </div>
    <div class="col-md-4 col-sm-6" style="display: none;" id="walletuploadbutton">
      <h4 id="uploadbtntxt-wallet" style="display: none;"> Decrypt Wallet:</h4>
      <h4 id="uploadbtntxt-privkey" style="display: none;"> Decrypt Private Key: </h4>
      <div class="form-group"><a class="btn btn-primary btn-block" id="decryptdata">DECRYPT</a></div>
      <div id="decryptStatus"></div>
    </div>
  </section>


  <section class="row" id="wallettransactions" style="display: block;">
    <hr />
    <div class="col-sm-4">
      <h4> Account Information </h4>
      <div>
        <div id="addressIdenticon" class="walletaddressIdenticon" title="Address Indenticon"></div>
        <br />
        <p> Account Address:
          <br /> <strong id="accountAddress" style="margin-left: 1em"></strong></p>
        <p> Account Balance: (this will not load if offline.)
          <br />
          <strong class="text-success" id="accountBalance" style="margin-left: 1em"> loading... </strong>
          <br />
          <strong class="text-success" id="accountBalanceUsd" style="margin-left: 1em"> loading... </strong>
          <br />
          <strong class="text-success" id="accountBalanceEur" style="margin-left: 1em"> loading... </strong>
          <br />
          <strong class="text-success" id="accountBalanceBtc" style="margin-left: 1em"> loading... </strong>
        </p>
      </div>
      <br />
      <div class="well">
        <p> Don't have anyone to send a transaction to? You can always donate to us! Donations mean we spend more time creating new features, listening to your feedback, and giving you what you want.</p>
        <a class="btn btn-primary btn-block" id="btndonate">DONATE</a>
        <div class="text-success text-center marg-v-sm"><strong id="donateThanks" style="display: none;"> THANK YOU!!! </strong></div>
      </div>
    </div>
    <div class="col-sm-8">
      <h4>Send Transaction</h4>

      <div class="form-group col-xs-12">
        <label> Nonce: </label>
        <input class="form-control" type="text" placeholder="" id="">
        <div id=""></div>
      </div>

      <div class="form-group col-xs-12">
        <label> To Address: </label>
        <input class="form-control" type="text" placeholder="0x7cb57b5a97eabe94205c07890be4c1ad31e486a8" id="sendtxaddress">
        <div id="addressvalidate"></div>
      </div>

      <div class="form-group col-xs-12">
        <label> Data: </label>
        <input class="form-control" type="text" placeholder="" id="">
        <div id=""></div>
      </div>

      <div class="form-group col-xs-12">
        <label> Value: </label>
        <input class="form-control" type="text" placeholder="" id="">
        <div id=""></div>
      </div>

      <div class="form-group col-xs-12">
        <label> Gas: </label>
        <input class="form-control" type="text" placeholder="" id="">
        <div id=""></div>
      </div>

      <div class="form-group col-xs-12">
        <label> Gas Limit: </label>
        <input class="form-control" type="text" placeholder="" id="">
        <div id=""></div>
      </div>

      <div class="form-group col-xs-12">
        <label>
          Amount to Send:
        </label>
        <input class="form-control" type="text" placeholder="Amount" id="sendtxamount">
        <div class="radio">
          <label>
            <input type="radio" name="currencyRadio" checked value="ether">Ether</label>
          <label>
            <input type="radio" name="currencyRadio" value="finney">Finney</label>
          <label>
            <input type="radio" name="currencyRadio" value="szabo">Szabo</label>
          <div id="weiamount"></div>
        </div>
      </div>

      <div class="form-group col-xs-12">
        <a class="btn btn-info btn-block" id="btngeneratetranaction">GENERATE TRANSACTION</a>
      </div>

      <div id="txcreatestatus"></div>

      <div class="form-group col-xs-12" style="display: none;" id="divtransactionTAs">
        <label> Raw Transaction </label>
        <textarea class="form-control" rows="4" disabled id="tarawtx"></textarea>
        <label> Signed Transaction </label>
        <textarea class="form-control" rows="4" disabled id="tasignedtx"></textarea>
      </div>

      <div class="form-group col-xs-12" id="divsendtranaction" style="display: none;">
        <a class="btn btn-primary btn-block" data-toggle="modal" data-target="#sendTransaction">SEND TRANSACTION</a>
      </div>

      <div id="txsendstatus"></div>


      <!-- Modal -->
      <div class="modal fade" id="sendTransaction" tabindex="-1" role="dialog" aria-labelledby="sendTransactionLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h3 class="modal-title" id="myModalLabel"> <strong class="text-danger">Warning!</strong></h3>
            </div>
            <div class="modal-body">
              <h4>
                You are about to send
                <strong id="confirmAmount" class="text-primary"> 345 </strong>
                <strong id="confirmCurrancy" class="text-primary"> Ether </strong>
                to address
                <strong id="confirmAddress" class="text-primary"> 928342938472938 </strong>
              </h4>
              <h4> Are you <span class="text-underline"> sure </span> you want to do this?</h4>
            </div>
            <div class="modal-footer text-center">
              <button type="button" class="btn btn-default" data-dismiss="modal">No, get me out of here!</button>
              <button type="button" class="btn btn-primary" id="btnapprovesend">Yes, I am sure! Make transaction.</button>
            </div>
          </div>
        </div>
      </div>
      <!--/modal-->
    </div>
  </section>
</div>
<!-- /send transaction -->