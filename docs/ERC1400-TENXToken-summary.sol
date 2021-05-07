/**
 * https://github.com/tenx-tech/tenx-token
 * https://etherscan.io/address/0x515ba0a2e286af10115284f151cf398688a69170#contracts
 *
 * https://sfl.global/news_post/jiexiyitaifangshangwudazhengquandaibijishubiaozhun/
*/

/**
 *Submitted for verification at Etherscan.io on 2019-06-12
*/

interface IERC20 {

contract ERC20Detailed is IERC20 {

library Roles {
    struct Role {

contract PauserRole {

contract Pausable is PauserRole {

interface IModerator {

library SafeMath {

contract Ownable {

library Address {
    /**
     * Returns whether the target address is a contract
     * @dev This function will return false if invoked during the constructor of a contract,
     * as the code is not actually created until after the constructor finishes.
     * @param account address of the account to check
     * @return whether the target address is a contract
     */
    function isContract(address account) internal view returns (bool) {
        uint256 size;
        // XXX Currently there is no better way to check if there is a contract in an address
        // than to check the size of the code at that address.
        // See https://ethereum.stackexchange.com/a/14016/36603
        // for more details about how this works.
        // TODO Check this again before the Serenity release, because all addresses will be
        // contracts then.
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}

interface IRewardsUpdatable {

interface IRewardable {

/**
 * @notice A contract with an associated Rewards contract to calculate rewards during token movements.
 */
contract Rewardable is IRewardable, Ownable {

/**
 * @title Standard ERC20 token
 *
 * @dev Implementation of the basic standard token.
 * https://eips.ethereum.org/EIPS/eip-20
 * Originally based on code by FirstBlood:
 * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
 *
 * This implementation emits additional Approval events, allowing applications to reconstruct the allowance status for
 * all accounts just by listening to said events. Note that this isn't required by the specification, and other
 * compliant implementations may not do it.
 */
contract ERC20 is IERC20 {

contract ERC20Redeemable is ERC20 {

/// @title IERC1594 Security Token Standard
/// @dev See https://github.com/SecurityTokenStandard/EIP-Spec
interface IERC1594 {

interface IHasIssuership {

// @notice Issuers are capable of issuing new TENX tokens from the TENXToken contract.
contract IssuerRole {

// @notice Controllers are capable of performing ERC1644 forced transfers.
contract ControllerRole {

contract Moderated is ControllerRole {

contract ERC1594 is IERC1594, IHasIssuership, Moderated, ERC20Redeemable, IssuerRole {

/// @title IERC1644 Controller Token Operation (part of the ERC1400 Security Token Standards)
/// @dev See https://github.com/SecurityTokenStandard/EIP-Spec
interface IERC1644 {
    // Controller Events
    event ControllerTransfer(
        address _controller,
        address indexed _from,
        address indexed _to,
        uint256 _value,
        bytes _data,
        bytes _operatorData
    );

    event ControllerRedemption(
        address _controller,
        address indexed _tokenHolder,
        uint256 _value,
        bytes _data,
        bytes _operatorData
    );

    // Controller Operation
    function controllerTransfer(address _from, address _to, uint256 _value, bytes calldata _data, bytes calldata _operatorData) external;
    function controllerRedeem(address _tokenHolder, uint256 _value, bytes calldata _data, bytes calldata _operatorData) external;
    function isControllable() external view returns (bool);
}

contract ERC1644 is IERC1644, Moderated, ERC20Redeemable {

contract ERC1400 is ERC1594, ERC1644 {

/**
 * @notice Capped ERC20 token
 * @dev ERC20 token with a token cap on mints, to ensure a 1:1 mint ratio of TENX to PAY.
 */
contract ERC20Capped is ERC20 {

/**
 * @notice RewardableToken
 * @dev ERC1400 token with a token cap and amortized rewards calculations. It's pausable for contract migrations.
 */
contract RewardableToken is ERC1400, ERC20Capped, Rewardable, Pausable {

/**
 * @notice TENXToken
 */
contract TENXToken is RewardableToken, ERC20Detailed("TenX Token", "TENX", 18) {
    constructor(IModerator _moderator, uint _cap) public RewardableToken(_moderator, _cap) {}
}
