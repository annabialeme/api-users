const pool = require("../config/database");

const getPosts = async () => {
    const result = await pool.query(
        `SELECT posts.*, users.name AS users_name 
         FROM posts 
         LEFT JOIN users ON posts.user_id = users.id`
    );
    return result.rows;
};

const getAllPosts = async () => {
    const result = await pool.query("SELECT * FROM posts");
    return result.rows
}

const getPostById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM posts
        WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createPost = async (id, title, image, user_id) => {
    const result = await pool.query(
        "INSERT INTO posts (title, image, user_id) VALUES ($1, $2, $3) RETURNING *",
        [title, image, user_id]
    );
    return result.rows[0];
};

const updatePost = async (id, title, image, user_id) => {
    const result = await pool.query(
        "UPDATE posts SET title = $1, image = $2, user_id = $3 WHERE id = $4 RETURNING *",
        [title, image, user_id, id]
    );
    return result.rows[0];
};

const deletePost = async (id) => {
    const result = await pool.query("DELETE FROM posts WHERE id = $1 RETURNING *", [id]);

    if (result.rowCount === 0) {
        return { error: "Post não encontrado." };
    }

    return { message: "Post deletado com sucesso." };
};

module.exports = { getPosts, getAllPosts, getPostById, createPost, updatePost, deletePost };