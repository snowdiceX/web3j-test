package org.web3j;

import java.math.BigInteger;

import org.web3j.crypto.Credentials;
import org.web3j.crypto.WalletUtils;
import org.web3j.generated.contracts.HelloWorld;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
//import org.web3j.tx.gas.DefaultGasProvider;
import org.web3j.tx.gas.StaticGasProvider;

/**
 * <p>This is the generated class for <code>web3j new helloworld</code></p>
 * <p>It deploys the Hello World contract in src/main/solidity/ and prints its address</p>
 * <p>For more information on how to run this project, please refer to our <a href="https://docs.web3j.io/quickstart/#deployment">documentation</a></p>
 */
public class Web3App {

	private static final String nodeUrl = System.getenv().getOrDefault("WEB3J_NODE_URL", "<node_url>");
	private static final String walletPassword = System.getenv().getOrDefault("WEB3J_WALLET_PASSWORD", "<wallet_password>");
	private static final String walletPath = System.getenv().getOrDefault("WEB3J_WALLET_PATH", "<wallet_path>");
	private static final String walletPrivateKey = System.getenv().getOrDefault("WEB3J_WALLET_PRIVATE_KEY", "<wallet_private_key>");
	
    public static final BigInteger GAS_PRICE = BigInteger.valueOf(4_100_000_000L);
	public static final BigInteger GAS_LIMIT = BigInteger.valueOf(900_000);
    
	public static void main(String[] args) throws Exception {
		System.out.println("System.getenv() ...");
		System.out.println("nodeUrl: "+nodeUrl);
		System.out.println("walletPath: "+walletPath);
		System.out.println("walletPrivateKey: "+walletPrivateKey);
		System.out.println("walletPassword: "+walletPassword);
		
		Credentials credentials = null;
		if (walletPrivateKey==null){
			// just for testing
			credentials = WalletUtils.loadCredentials(walletPassword, walletPath);
		}else {
			credentials = Credentials.create(walletPrivateKey);
		}
		Web3j web3j = Web3j.build(new HttpService(nodeUrl));
		System.out.println("Deploying HelloWorld contract ...");
//		HelloWorld helloWorld = HelloWorld.deploy(web3j, credentials,
//				new DefaultGasProvider(), "Hello Blockchain World!").send();
		StaticGasProvider gas = new StaticGasProvider(GAS_PRICE, GAS_LIMIT);
		System.out.println("new gas ...");
		HelloWorld helloWorld = HelloWorld.deploy(web3j, credentials,
				gas, "Hello Blockchain World!").send();
		System.out.println("Contract address: " + helloWorld.getContractAddress());
		System.out.println("Greeting method result: " + helloWorld.greeting().send());
	}
}

