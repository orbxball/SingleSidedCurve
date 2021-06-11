// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface ICurveFi {
    function get_virtual_price() external view returns (uint256);

    // Curve.fi Pool v1
    function add_liquidity(
        uint256[2] calldata amounts,
        uint256 min_mint_amount
    ) external payable;

    function add_liquidity(
        uint256[3] calldata amounts,
        uint256 min_mint_amount
    ) external payable;

    function add_liquidity(
        uint256[4] calldata amounts,
        uint256 min_mint_amount
    ) external payable;

    // Curve.fi Pool v2
    function add_liquidity(
        uint256[2] calldata amounts,
        uint256 min_mint_amount,
        bool use_underlying
    ) external payable;

    function add_liquidity(
        uint256[3] calldata amounts,
        uint256 min_mint_amount,
        bool use_underlying
    ) external payable;

    function add_liquidity(
        uint256[4] calldata amounts,
        uint256 min_mint_amount,
        bool use_underlying
    ) external payable;

    // Curve.fi Factory USD Metapool v2
    function add_liquidity(
        address pool,
        uint256[4] calldata amounts,
        uint256 min_mint_amount
    ) external;

    function coins(uint256) external returns (address);
    function underlying_coins(uint256) external returns (address);

    function remove_liquidity_imbalance(uint256[2] calldata amounts, uint256 max_burn_amount) external;

    function remove_liquidity(uint256 _amount, uint256[2] calldata amounts) external;

    function calc_withdraw_one_coin(uint256 _amount, int128 i) external view returns (uint256);

    function calc_withdraw_one_coin(uint256 _amount, int128 i, bool use_underlying) external view returns (uint256);

    function remove_liquidity_one_coin(
        uint256 _token_amount,
        int128 i,
        uint256 min_amount
    ) external;

    function remove_liquidity_one_coin(
        uint256 _token_amount,
        int128 i,
        uint256 min_amount,
        bool use_underlying
    ) external;

    function exchange(
        int128 from,
        int128 to,
        uint256 _from_amount,
        uint256 _min_to_amount
    ) external payable;

    function exchange_underlying(
        int128 i,
        int128 j,
        uint256 dx,
        uint256 min_dy
    ) external payable;

    function balances(int128) external view returns (uint256);

    function get_dy(
        int128 from,
        int128 to,
        uint256 _from_amount
    ) external view returns (uint256);

    function calc_token_amount( uint256[2] calldata amounts, bool is_deposit) external view returns (uint256);
    function calc_token_amount( uint256[3] calldata amounts, bool is_deposit) external view returns (uint256);
    function calc_token_amount( uint256[4] calldata amounts, bool is_deposit) external view returns (uint256);
}

interface Zap {
    function remove_liquidity_one_coin(
        uint256,
        int128,
        uint256
    ) external;
}